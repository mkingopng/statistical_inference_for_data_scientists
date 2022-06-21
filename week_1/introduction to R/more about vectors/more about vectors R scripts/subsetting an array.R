x <- 1:12
x <- array(x, c(3, 4))
x
x[7] # The 7th element
x[c(11, 12)] # The 11th and 12th elements
x[-c(11, 12)] # All but the 11th and 12th elements