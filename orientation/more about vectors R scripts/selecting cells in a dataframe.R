x <- data.frame(
    Person = c('Tom', 'Dick', 'Harry'),
    Age = c(23, 45, 32)
)
# These all return atomic vectors
x[1, 1]
x[[1, 1]]
x[3, 2]
x[[3, 2]]