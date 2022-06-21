x <- 1:12
x <- array(x, c(3, 4))
x
x[1, 2] # The element in pos 1 of the 1st dimension, and pos 2 of the 2nd dimension
x[1, ] # The elements in pos 1 of the 1st dimension, and any pos of 2nd dimension
x[ , 2] # The elements in any pos of the 1st dimension, and pos 2 of the 2nd dimension
x[ , ] # The elements in any pos of the 1st dimension, and any pos of the 2nd dimension