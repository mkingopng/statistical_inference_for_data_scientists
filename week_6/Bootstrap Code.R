
#####################################################
## EDF - empirical distribution function
#####################################################

## Sample of Size 5
set.seed(2)
plot(ecdf(rexp(5)), 
     main = "EDF for n = 5 simulations of Exp(1)")
curve(pexp(x), add = TRUE, col = "red", lwd = 2)

## Sample of Size 20
set.seed(2)
plot(ecdf(rexp(20)), 
     main = "EDF for n = 20 simulations of Exp(1)")
curve(pexp(x), add = TRUE, col = "red", lwd = 2)

## Sample of Size 100
set.seed(2)
plot(ecdf(rexp(100)), 
     main = "EDF for n = 100 simulations of Exp(1)")
curve(pexp(x), add = TRUE, col = "red", lwd = 2)

## Sample of Size 1000
plot(ecdf(rexp(1000)), 
     main = "EDF for n = 1000 simulations of Exp(1)")
curve(pexp(x), add = TRUE, col = "red", lwd = 2)



###############################################################
## The Bootstrap IDEA
###############################################################

# In this activity, you will evaluate the distribution of the sample 
# mean of a sample of size n = 25 as an estimator of the mean of the 
# uniform in $[0,1]$ distribution.
# 
# This activity uses either 100 or 5000 different samples, each of size 25, 
# to produce the accurate results. However, in practice, we only have one 
# sample of size 25. If we still want to get an answer to the same question 
# about the distribution of the sample mean we resort to the bootstrap, 
# with its resampling idea.

# Question 1: Using R generate 100 replications of the mean. You will 
# generate 100 samples of size n = 25 and for each sample calculate its sample 
# mean. This will give you a dataset of generated means of size 100. Find the 
# sample mean and variance of this new dataset.

m <- numeric(100)
for(i in 1:100){
  data <- runif(n = 25, min = 0, max = 1)
  m[i] <- mean(data)
}
m
mean(m) 
var(m) 

# Question 2: Using R perform a nonparametric density estimation of the 
# mean and find the optimal bandwidth used using the function 
# density.
hist(m, prob = TRUE, breaks = 5)
lines(density(m), lwd = 2, col = "blue")
curve(dnorm(x, mean = 0.5, sd = sqrt(0.0033)), lwd = 2, col = "red", add = TRUE)
# What is the theoretical variance of the sample mean? Compare it to the 
# variance of the simulated sample means.

1/2 # mean of Xbar
(1/12)/25 # variance of Xbar

mean(m)
var(m)


#############################################################
## Resampling
#############################################################

# Create a fixed sample of $25$ uniform in $[0, 1]$ random numbers. 

theSample <- c(0.52, 0.07, 0.84, 0.42, 0.98, 0.47, 0.90, 0.01, 0.19, 0.38, 
               0.30, 0.52, 0.72, 0.95, 0.49, 0.13, 0.60, 0.99, 0.09, 0.89, 
               0.33, 0.47, 0.17, 0.35, 0.17)

# Question 1: Resample this sample 5000 times by calculating the sample mean 
# \hat{\mu }^{*}(b), b=1,2,,,,,,5000 for each new sample.

B = 5000
mu.hats <- numeric(B)
for(b in 1:B){
  reSample <- sample(theSample, size = length(theSample), replace = TRUE)
  mu.hats[b] <- mean(reSample)
}
mu.hats

# Question 2: Find the bootstrap estimate of standard error s(\hat{\mu}).
sd(mu.hats)
sqrt( sum((mu.hats - mean(mu.hats))^2) / (B - 1) )

# Question 3: Produce the kernel density estimator of the resampled values.
hist(mu.hats, prob = TRUE, breaks = 50)
lines(density(mu.hats), lwd = 2, col = "blue")




################################################################
## Parametric Bootstrap
################################################################

# Using R perform parametric bootstrap to estimate the standard deviation 
# of the correlation coefficient using the data from the Parametric 
# Bootstrap example, that is: 

lsat = c(576, 635, 558, 578, 666, 580, 555, 661, 651, 605, 
         653, 575, 545, 572, 594); 
gpa = c(3.39, 3.3, 2.81, 3.03, 3.44, 3.07, 3, 3.43, 3.36, 
        3.13, 3.12, 2.74, 2.76, 2.88, 2.96);

# Assume that (LSAT, GPA) has a bivariate normal distribution and estimate 
# the five parameters. Then generate 1000 samples of 15 pairs from this 
# bivariate distribution.

# The estimated parameters of the bivariate normal distribution are:
mean(lsat)
mean(gpa)
var(lsat)
var(gpa)
cor(lsat,gpa)
cov(lsat,gpa)
cov(gpa, lsat)


mu = c(600.267, 3.09467)
sigma = matrix(c(1746.78, 7.90152, 7.90152, 0.0592981), 
               nrow = 2, ncol = 2)

library(MASS)
rho.hats <- numeric(10000)
for(i in 1:10000){
  bootstrapSample <- mvrnorm(n = 15, mu = mu, Sigma = sigma)
  rho.hats[i] <- cor(bootstrapSample[,1], bootstrapSample[,2])
}
sd(rho.hats)


# We could also perform a non-parametric Bootstrap estimate
rho.hats <- numeric(1000)
for(i in 1:1000){
  index <- sample(1:15, replace = TRUE)
  bootstrapSample <- cbind(lsat[index], gpa[index])
  rho.hats[i] <- cor(bootstrapSample[,1], bootstrapSample[,2])
}
sd(rho.hats)
