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

my_rbernoulli <- function(n, p) { 
  U <- runif(n, min=0, max=1)# [INSERT YOUR CODE HERE] 
  x <- U <= p# Return draws
  return(x)
}#MY_RBERNOULLI
# Test the custom Bernoulli generator function
x <- my_rbernoulli(10000, 0.5)
length(x) == 10000 # should return TRUE
mean(x) # should a number near 0.5
