nums <- c(1, 1, 2, 3, 5, 8, 13, 21, 34, 55)

# Create a vector of logicals
wanted <- nums >= 13
wanted

# Use it to select the elements
nums[wanted]