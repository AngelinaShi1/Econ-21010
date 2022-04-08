library(ggplot2)
n <- 10000
mu <- 0
sigma <- 1
x <- rnorm(n, mu, sigma)
ggplot(data.frame(x))+aes(x)+geom_histogram(bins=100)

n <- 10000
min_y <- -1
max_y <- 1
y <- runif(n, min_y, max_y)
ggplot(data.frame(y))+aes(y)+geom_histogram(bins=100)