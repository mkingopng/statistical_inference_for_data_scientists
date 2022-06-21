library(ggplot2)

headstails <- data.frame(s=c("HHH","HHT","HTH","THH","TTH","THT","HTT","TTT"), 
                         X=c(3,2,2,2,1,1,1,0))

ggplot(data = headstails, aes(x = X, y = ..density..)) + 
  geom_histogram(bins=4, fill="royalblue", col="grey") + 
  scale_y_continuous(breaks = seq(0, 1, by = 0.05))