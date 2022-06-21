set.seed(1)
data <- matrix(runif(2500, min=0, max=1), nrow=100, ncol=25)
m <- rowMeans(data)
plot(density(m))
density(m)$bw 