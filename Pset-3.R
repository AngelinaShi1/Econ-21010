df <- read.csv("data/ak91.csv")
n <- nrow(df)

#X
yrs_educ <- df$YRS_EDUC
#Y
wkly_wage <- df$WKLY_WAGE

n=329509

#b
beta=(1/n*sum(wkly_wage*yrs_educ)-1/n*sum(wkly_wage)*sum(yrs_educ))/(1/n*sum(yrs_educ^2)-(1/n*sum(yrs_educ)^2))
beta
alpha=1/n*sum(wkly_wage)-1/n*sum(yrs_educ)*beta
alpha

#c
has_college_degree <- yrs_educ == 16
beta=(1/n*sum(wkly_wage*has_college_degree)-1/n*sum(wkly_wage)*sum(has_college_degree))/(1/n*sum(has_college_degree^2)-(1/n*sum(has_college_degree)^2))
beta
alpha=1/n*sum(wkly_wage)-1/n*sum(has_college_degree)*beta
alpha

#d
mu_college <- sum((has_college_degree)*(wkly_wage)) / sum(has_college_degree)
x <- sum(has_college_degree * wkly_wage^2) / sum(has_college_degree) 
se_college <- (1/(sqrt(n))*sqrt(x-mu_college^2))/sqrt(mean(has_college_degree))
se_college
