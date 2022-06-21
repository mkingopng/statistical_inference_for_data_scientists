ordered.normal <- sort(rnorm(100))
ordered.normal
pnorm(ordered.normal)


alpha <- 1; n <- 5;
exact <- function(x) (n*x)^(n*alpha - 1) *exp( - n * x) * n / gamma(n*alpha)
curve(exact,0,3, xlab = expression(bar(x)), ylab = "Density", lwd = 2)

clt <- function(x) dnorm(x, mean = alpha, sd = alpha / sqrt(n))
curve(clt, col = "blue", add = TRUE, lwd = 2)

spa <- function(x) (n*x)^(n*alpha-1) * exp(-n*x)*n / 
   (sqrt(2*pi/(n*alpha)) * ( n *alpha) ^ ( n * alpha) * exp(-n*alpha))
curve(spa, col = "red", add = TRUE, lwd = 2)
legend("topright", legend = c("Exact", "CLT", "Saddlepoint"), 
       col = c("black", "blue", "red"), lty = 1, lwd = 2)
