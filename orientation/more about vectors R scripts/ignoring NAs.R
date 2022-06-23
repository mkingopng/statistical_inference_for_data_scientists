x <- c(FALSE, FALSE, FALSE, NA)
any(x)
any(x, na.rm=TRUE)

x <- c(TRUE, TRUE, TRUE, NA)
all(x)
all(x, na.rm=TRUE)