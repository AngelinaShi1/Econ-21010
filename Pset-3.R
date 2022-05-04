df <- read.csv("data/ak91.csv")
n <- nrow(df)

#X
yrs_educ <- df$YRS_EDUC
#Y
wkly_wage <- df$WKLY_WAGE

n=329509

#b
beta=(mean(wkly_wage*yrs_educ)-mean(wkly_wage)*mean(yrs_educ))/(mean(yrs_educ^2)-(mean(yrs_educ)^2))
beta
alpha=mean(wkly_wage)-mean(yrs_educ)*beta
alpha

#check
lm(wkly_wage ~ yrs_educ)

#c
blp_yx <- alpha + 16 * beta
blp_yx

#d
blp_yx <- alpha + yrs_educ * beta
epsilon <- wkly_wage-blp_yx
se_numer <- sqrt(mean(epsilon^2 * (yrs_educ-mean(yrs_educ))^2))
var <- mean(yrs_educ^2)-(mean(yrs_educ))^2
se <- (se_numer/var / sqrt(n))
se

#e
tn <- abs((beta-31)/se)
tn

#f
p <- 2*(1-pnorm(tn))
p

