# Anything to the power 0 is 1
NA ^ 0

# TRUE | anything is TRUE
TRUE | NA

# FALSE & anything is FALSE
FALSE & NA

# If there is a TRUE then any is TRUE
any(TRUE, NA)

# If there is a FALSE then all is FALSE
all(FALSE, NA)