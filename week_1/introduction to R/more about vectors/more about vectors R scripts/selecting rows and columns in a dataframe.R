x <- data.frame(
    Person = c('Tom', 'Dick', 'Harry'),
    Age = c(23, 45, 32)
)
# These return data frames
x[1, 1:2]
x[1:2, 1:2]
# These return atomic vectors
x[1:2, 1]