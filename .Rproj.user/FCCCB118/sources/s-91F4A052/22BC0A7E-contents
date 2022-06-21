## Define the density
pdf = function(x) exp(-x)
## Plot the density
curve(pdf, 0, 10)
## Mean
mu = integrate(function(x) x*pdf(x), 0, Inf)$value
## Second central moment
mu2 = integrate(function(x) (x-mu)^2*pdf(x), 0, Inf)$value
## Third central moment
mu3 = integrate(function(x) (x-mu)^3*pdf(x), 0, Inf)$value
## Calculate skewness
skewness = mu3/(mu2^1.5)
list(mean = mu, mu2 = mu2, mu3 = mu3, skewness = skewness)
skewness