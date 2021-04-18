# April 17th 2021
# Jahyun Koo
# Hypothesis 2  
# Null Hypothesis : IV 'Death_covid-19' & IV 'AoDp' does not fit into regression model with 'LSE'
# Alternative Hypothesis : IV 'Death_covid-19' and 'AoDp' fit into the regression model with 'LSE'
#
#### Abbreviation Lists
# Independent Variable = IV
# Dependent Variable = DV
# MonthlyReportedDeath = MRD
# Personal Consumption Expenditures = PCE
# Liquor Store Expense = LSE
# e-commerce percentages = ECp
# percentage of people who showed anxiety or depression = AoDp

setwd("/Users/nypd_r0lla/Desktop/2021 SPRING/ECO 321")
getwd()

# install packages to analyze time-series data set.
install.packages('tseries')
install.packages('lmtest')
library(tseries)
library(lmtest)

library(readxl)
Hypothesis3 <- read_excel("Project 1/Hypothesis3.xlsx")
View(Hypothesis3)

help(plot)
plot(Hypothesis3$Death_covid-19 , Hypothesis3$AoD, Hypothesis3$liquor)
# scatter plot shows not a beautiful shape but i apply simple linear regression.

Hypothesis3 # print the data to the screen in a nice format

## plot a x/y scatter plot with the data
############# plot(Hypothesis2$'PCE', Hypothesis2$'Death_covid-19')

## create a "linear model" - that is, do the regression
help(lm)
Hypothesis3.regression <- lm(Hypothesis3$liquor ~ Hypothesis3$`Death-COVID-19`+Hypothesis3$`AoD`, data=Hypothesis3)
## generate a summary of the regression
summary(Hypothesis3.regression)

