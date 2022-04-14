df <- read.csv("data/ak91.csv")
yrs_educ <- df$YRS_EDUC
wkly_wage <- df$WKLY_WAGE
has_college_degree <- yrs_educ == 16