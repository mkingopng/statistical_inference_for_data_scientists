
#############################################################
## Bootstrap Estimate of Bias Example
#############################################################

# Use the nonparametric bootstrap, assuming B = 1000, in R to estimate
# the bias of the correlation coefficient using the data from the Parametric
# Bootstrap example, that is:

lsat= c(576, 635, 558, 578, 666, 580, 555, 661, 651, 605,
          653, 575, 545, 572, 594);
gpa= c(3.39, 3.3, 2.81, 3.03, 3.44, 3.07, 3, 3.43, 3.36,
       3.13, 3.12, 2.74, 2.76, 2.88, 2.96);

# What is the bias-adjusted estimate of the correlation coefficient?

# Step 1: generate B independent bootstrap samples of size n
# Step 2: evaluating the bootstrap replications

n = length(lsat)
B = 100000
vals <- numeric(B)
for(b in 1:B){
  index <- sample(1:15, replace = TRUE)
  vals[b] <- cor(lsat[index], gpa[index])
}

# Step 3: approximating the bootstrap expectation
mean(vals) 

# Step 4: getting the estimate (approximation) of the bootstrap estimate of
#         bias based on B replications
bsb <- mean(vals) - cor(lsat, gpa) 

# Bias adjusted estimate
cor(lsat, gpa) - bsb
sd(vals)
var(vals) + bsb^2

################################################################
# Jackknife estimate of bias Example
################################################################

# Use the following data:

lsat = c(576, 635, 558, 578, 666, 580, 555, 661, 651,
         605, 653, 575, 545, 572, 594)
gpa = c(3.39, 3.3, 2.81, 3.03, 3.44, 3.07, 3, 3.43, 3.36,
      3.13, 3.12, 2.74, 2.76, 2.88, 2.96)

# Estimate the bias of the correlation coefficient using the jackknife method.

## Estimate Tn:
(rho <- cor(lsat, gpa))

## Create Jackknife sample and compute Tn^(i)
rho.j <- numeric(15)
for(j in 1:15){
  jackknifeSample <- cbind(lsat[-j], gpa[-j])
  rho.j[j] <- cor(jackknifeSample[,1], jackknifeSample[,2])
}

# Compute Tn(.)
(avg.jack <- mean(rho.j)) 

# Compute Jackknife Bias
(bias <- (15-1)*(avg.jack - rho))

# Jackknife bias corrected estimator
rho - bias


###############################################################
## Huber Estimator
###############################################################

# Assume that the dataset contains 11 values:

data = c(???1.28,???0.96,???0.46,???0.44,???0.26,???0.21,???0.063, 0.39, 3, 6, 9)

# and has been constructed by adding three outliers to eight standard
# normal observations. We have x bar = 1.33 and the median m = ???0.21. Find
# values of the Huber estimator for different values of k = 0, 1, . . . , 8.

# Hubers rho function
rho.fn <- function(x, k) {
  if(k == 0) return( abs(x) )
  if(abs(x) <= k) return( 0.5 * x^2)
  if(abs(x) > k) return( k * abs(x) - 0.5 * k^2)
}
rho <- function(x) sapply(x, function(y) rho.fn(y, k=1))
curve(rho,-3,3)
abline(v = c(-1,1), lty = 2)

# The M-estimator solves a minimization problem

calculate_loss <- function(data, a, k){
  rho <- function(x) sapply(x, function(y) rho.fn(y, k=k))
  sum(rho(data-a))
}

m_est <- numeric(9)
for(k in 0:8){
  m_est[k+1] <- optim(par = 0, fn = calculate_loss, k=k,
                      data = data, method = "Brent", 
                      lower = -10, upper = 10)$par
}
data.frame("k" = 0:8, "m-estimate" = m_est)
