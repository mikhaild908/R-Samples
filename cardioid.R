# Cardioid
points <- data.frame(t = seq(0, 2 * pi, by = 0.1))

x_coordinates <- function(t) 1 * cos(t) * (1 - cos(t))
y_coordinates <- function(t) 1 * sin(t) * (1 - cos(t))

points$x = x_coordinates(points$t)
points$y = y_coordinates(points$t)

with(points, plot(x, y, type="l"))
with(points, polygon(x, y, col="hotpink"))