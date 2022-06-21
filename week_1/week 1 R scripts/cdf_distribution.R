


# random geometric data
x.geom <- rgeom(n=n, prob=.3)
# Cumulative Distribution Function
plot(ecdf(x.geom),
     xlab = "x",
     ylab = "P(X <= x)",
     col = "royalblue",
     cex = 0.3,
     lwd = 0.2,
     pch = 21,
     main = "Cumulative Distribution Function \n Geometric(n=1000, p=0.3)