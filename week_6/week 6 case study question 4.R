library(boot)
d <- data.frame("x" = c(8406, 2342, 8187, 8459, 4795, 3516, 4796, 10238), "z" = c(-1200, 2601, -2705, 1982, -1290, 351, -638, -2719))
m_x=mean(d$x)
m_z=mean(d$z)
set.seed(2345)
std<- function(data,indices){
  	  d<- data[indices,]
      return(mean(d$z)/mean(d$x))
}
bootstd <- boot(data=d, statistic= std, R=1000)
mean(bootstd$t) - m_z/m_x
2*m_z/m_x - mean(bootstd$t)
