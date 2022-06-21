library(ggplot2)
base <- ggplot(data.frame(x = c(0,1)), aes(x))
myfunc <- function(x) -log(x)
base + stat_function(fun = myfunc, colour = "blue") +
  scale_x_continuous(breaks = seq(0, 1, by = 0.2)) +
  ylim(0,10)
