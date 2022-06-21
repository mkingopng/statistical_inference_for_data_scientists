x <- c(TRUE, 1L, 3.14, 'Hello')
# The types are: logical, integer, double, character
# Of these, character is the most flexible, so everything gets coerced to a character
typeof(x)

x <- c(TRUE, 1L, 3.14)
# The types are: logical, integer, double
# Of these, double is the most flexible, so everything gets coerced to a double
typeof(x)

x <- c(TRUE, 1L)
# The types are: logical, integer
# Of these, integer is the most flexible, so everything gets coerced to an integer
typeof(x)