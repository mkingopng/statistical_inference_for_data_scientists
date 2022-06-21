nums <- c(1, 1, 2, 3, 5, 8, 13, 21, 34, 55)
nums[nums <= 2 | nums >= 13]
nums[nums >= 2 & nums <= 13]
nums[nums != 1 & nums != 8]