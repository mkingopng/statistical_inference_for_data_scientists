library(ggplot2)
x <- 1:8
p <- 0.6
P <- (1-p)^(x-1)*p
dat <- data.frame(x,P)
ggplot(data=dat, aes(x=x, y=P)) +
  geom_bar(stat="identity", width=0.1,fill="orange2") + 
  scale_x_continuous(breaks = seq(0, 10, by = 1))