x <- list(c('Tom', 'Dick', 'Harry'), c(23, 45, 32))
class(x) <- 'data.frame'
is.data.frame(x)