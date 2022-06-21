# one.dice <- function(){
#   dice <- sample(1:6, size = 1, replace = TRUE)
#   return(dice)
# }
#
# # one.dice()
# par(mfrow=c(2,2))
#
# for (i in 1:4){
# sims <- replicate(100, one.dice())
# table(sims)
# table(sims)/length(sims)
# plot(table(sims), xlab = 'Event', ylab = 'Frequency')
# }

# too late to be trying to figure this out