lsat<- c(576, 635, 558, 578, 666, 580, 555, 661, 651, 605, 653, 575, 545, 572, 594);
gpa<- c(3.39, 3.3, 2.81, 3.03, 3.44, 3.07, 3, 3.43, 3.36, 3.13, 3.12, 2.74, 2.76, 2.88, 2.96);

set.seed(123456)
LSAT <- c(576,635,558,578,666,580,555,661,651,605,653,575,545,572,594)
GPA <- c(3.39,3.30,2.81,3.03,3.44,3.07,3.00,3.43,3.36,3.13,3.12,2.74,
         2.76,2.88,2.96)

n <- length(LSAT)
B <- 1000
vals <- numeric(B)
for(b in 1:B){
  index <- sample(1:15, replace = TRUE)
  vals[b] <- cor(LSAT[index], GPA[index])
}
cor(LSAT, GPA) # sample correlation
mean(vals) # bootstrap estimate
mean(vals) - cor(LSAT, GPA) # bootstrap estimate of the bias

