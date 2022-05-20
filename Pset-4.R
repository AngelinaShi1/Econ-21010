dat <- read.csv("data/bw06.csv")
dat <- as.matrix(dat)
n <- 9800
y <- dat[, "birthweight"]
w <- dat[, "cigsdaily"]
x <- cbind(1, dat[, c("boy", "age", "highschool", "somecollege", "college")])
x_tld <- dat[, "married"]

#a
beta=(mean(y*w)-mean(y)*mean(w))/(mean(w^2)-(mean(w)^2))
beta
alpha=mean(y)-mean(w)*beta
alpha

#b
X <- cbind(x, w)
beta_w <- solve(t(X) %*% X) %*% (t(X) %*% y)
beta_w

