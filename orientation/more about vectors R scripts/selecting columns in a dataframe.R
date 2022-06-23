x <- data.frame(
    Person = c('Tom', 'Dick', 'Harry'),
    Age = c(23, 45, 32)
)
# These return the column as a single-column data frame
x[1]
x['Person']
# These return the column as an atomic vector
x[,1]
x[['Person']]
x$Person