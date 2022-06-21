vowels <- c('a', 'e', 'i', 'o', 'u')

# The elements not at position 2
vowels[-2]

# The elements not at positions 2 or 3
vowels[c(-2, -3)]
# Or equivalently
vowels[-c(2, 3)]

# The elements not at positions 2 through 5
vowels[-(2:5)]