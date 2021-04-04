################
## JAHYUN KOO ##
#### ECO321 ####
##### HW 2 #####
################
##2
### load the dataset into R and call it 'data_wage'.
setwd("/Users/nypd_r0lla/Desktop/ECO321_R")

data_wage <- read.csv("cps08.csv",header=TRUE)
dim(data_wage)
n <- dim(data_wage)[1]
detach(data_school)
attach(data_wage)
# (a)
mean1 <- 

# (b)
  # Null Hypothesis(H0) : Age does not affect AHE   
  #  VS
  # Alternative Hypothesis(H1) : Age does affect AHE
  # 
  # sorry i don't understand what it means to ' write down the p-value for your test'
  
help(estimates)
# (c)
# 

help(ifelse)
# (d)
# dummy variable age_ID 
# takes value 1 when age is equal or greater than 30
# takes value 0 when age is smaller than 30
# r video lecture : clsize <- ifelse(str<20, 1 , 0)
age_ID <- ifelse(data_wage$age>=30,1,0)

summary(data_wage$ahe[age_ID==0])
summary(data_wage$ahe[age_ID==1])


# (e)
# sample mean of AHE for individuals who are under 30
mean(data_wage$ahe[age_ID == 0])
# sample variance of AHE for individuals who are under 30
var(data_wage$ahe[age_ID == 0])
# sample mean of AHE for individuals who are 30 or older
mean(data_wage$ahe[age_ID == 1])
# sample variance of AHE for individuals who are 30 or older
var(data_wage$ahe[age_ID == 1])

# (f)
# n0 : sample size for the group under age 30
# n1 : sample size for the group equal to and over 30
n0 <- length(data_wage$ahe[age_ID ==0])
n1 <- length(data_wage$ahe[age_ID ==1])

diff_mean <- mean(data_wage$ahe[age_ID == 0]) - mean(data_wage$ahe[age_ID == 1])
var_age_ID0 <- var(data_wage$ahe[age_ID == 0])/n0
var_age_ID1 <- var(data_wage$ahe[age_ID == 1])/n1

ttest <- diff_mean/sqrt(var_age_ID0 + var_age_ID1)
print(ttest)
# |t| > 2.326, so we reject the null hypothesis that the difference of 
# the means is equal to zero for alpha = 2%

# (g) 
# Confidence Interval for the difference in mean 88%
ci_diffmean <- diff_mean + sqrt(var_age_ID0 + var_age_ID1)*c(-qnorm(0.940),qnorm(0.940))
print(ci_diffmean)

# The confidence interval does not include 0
# This confirms that we can reject the null hypothesis



