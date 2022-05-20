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

#f
sum(x[, 2] == 1 & x[, 3] == 31 & x[, 4] == 0 & x[, 5] == 0 & x[, 6] ==1)
sum(w == 20)
sum(x[, 2] == 1 & w == 20 & x[, 3] == 31 & x[, 4] == 0 & x[, 5] == 0 & x[, 6] ==1)




