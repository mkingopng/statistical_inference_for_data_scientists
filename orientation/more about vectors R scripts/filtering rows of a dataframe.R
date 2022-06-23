x <- data.frame(
    Person = c('Tom', 'Dick', 'Harry'),
    Age = c(23, 45, 32)
)
x[x$Age < 40, ] # Note the comma - we are selecting by row and want all columns
x[x$Person == 'Dick', ]
x[x$Person %in% c('Dick', 'Harry'), ]