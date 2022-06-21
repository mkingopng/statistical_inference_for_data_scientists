## Plot the density function
pdf = function(y) (7/4)*exp(-(7/4)*(y-3))
curve(pdf,3,10)
## Show that the density function integrates to one
integrate(pdf,3,Inf)
