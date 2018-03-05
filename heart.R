# Heart

points <- data.frame(t = seq(0, 2 * pi, by=0.1))

x_coordinates <- function(t) 16 * sin(t)^3
y_coordinates <- function(t) 13 * cos(t) - 5 * cos(2 * t) - 2 * cos(3 * t) - cos(4 * t)

points$y = y_coordinates(points$t)
points$x = x_coordinates(points$t)

with(points, plot(x, y, type="l"))
with(points, polygon(x, y, col="hotpink"))