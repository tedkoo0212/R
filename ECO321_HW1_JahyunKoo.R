################
## JAHYUN KOO ##
#### ECO321 ####
##### HW 1 #####
################

##2
###(a) load the dataset into R and call it 'data_wage'.
setwd("/Users/nypd_r0lla/Desktop/ECO321_R")

data_wage <- read.csv("cps08.csv",header=TRUE)
dim(data_wage)
n <- dim(data_wage)[1]

###(b) How many discrete variables and continuous variables in dataset.
class(data_wage$ahe)
class(data_wage$year)
class(data_wage$bachelor)
class(data_wage$female)
class(data_wage$age)
# continuous variable : 1
# discrete variables : 4

###(c) How many male and female workers are with bachelor and hs degree 
# female + bachelor + highschool
nrow(subset(data_wage, bachelor == "1" & female =="0"))
# male + bachelor + highschool
nrow(subset(data_wage, bachelor == "1" & female =="1"))

###(d) create an histogram (with 20 bins) for AHE with 11`2```

hist(data_wage$ahe, breaks=20, freq=TRUE, main="Histogram For Average")
data_wage$ahe_mean = mean(data_wage$ahe)
abline(v=data_wage$ahe_mean, col="blue")

###(e) percentiles(25th,50th,75th) , variance, skewness of AHE and age variables
### are these two variables normally distributed ?

# install packages and import library for measuring skewness
install.packages("moments")
install.packages("ggpubr")

library(moments)
library(ggpubr)
# Density plot
ggdensity(data_wage$ahe, fill = "lightgray")
ggdensity(data_wage$age, fill = "lightgray")
# It is easily observed that both variables are not normally distributed.

#THREE percentiles, variance, skewness of variable ahe
quantile(data_wage$ahe, c(0.25))
quantile(data_wage$ahe, c(0.50))
quantile(data_wage$ahe, c(0.75))
var(data_wage$ahe)
skewness(data_wage$ahe)

#THREE percentiles, variance, skewness of variable age
quantile(data_wage$age, c(0.25))
quantile(data_wage$age, c(0.50))
quantile(data_wage$age, c(0.75))
var(data_wage$age)
skewness(data_wage$age)

shapiro.test(skewed)

help("hist")
help("abline")
