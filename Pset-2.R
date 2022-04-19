df <- read.csv("data/ak91.csv")
yrs_educ <- df$YRS_EDUC
wkly_wage <- df$WKLY_WAGE
#a
has_college_degree <- yrs_educ == 16
mean(has_college_degree)
#b
mu_college <- sum((has_college_degree)*(wkly_wage)) / sum(has_college_degree)
mu_college
#c
n = 329309
x <- sum(has_college_degree * wkly_wage^2) / sum(has_college_degree) 
se_college <- (1/(sqrt(n))*sqrt(x-mu_college^2))/sqrt(mean(has_college_degree))
se_college
#d
cn1 <- mu_college-1.96*se_college
cn1
cn2 <- mu_college+1.96*se_college
cn2
#e
abs((mu_college-600)/se_college)
#f
abs((mu_college-595)/se_college)


