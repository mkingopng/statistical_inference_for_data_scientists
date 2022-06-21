# Plot the sin curve
plot(
    sin,
    from = 0,
    to = 2*pi,
)
# Add points at the max and min
points(
    x = c(pi/2, 3*pi/2),
    y = c(1, -1),
)
# Add text at the max and min
text(
    x = c(pi/2, 3*pi/2),
    y = c(1, -1),
    labels = c('Max', 'Min'),
    pos = c(3, 4),
    offset = c(0.5, 0.5),
    font = c(2, 3),
    cex = c(1.5, 1.5),
    col = c('green', 'red'),
)