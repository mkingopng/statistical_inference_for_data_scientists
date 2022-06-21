x <- matrix(1:12, nrow=3, ncol=4)
x
# Sum across the rows
apply(x, MARGIN=1, FUN=sum)

# Sum down the columns
apply(x, MARGIN=2, FUN=sum)