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
Hypothesis2 <- read_excel("Project 1/Hypothesis2.xlsx")
View(Hypothesis2)

help(plot)
plot(Hypothesis2$Death_covid-19 , Hypothesis2$AoD, Hypothesis2$liquor)
# scatter plot shows not a beautiful shape but i apply simple linear regression.

Hypothesis2 # print the data to the screen in a nice format

## plot a x/y scatter plot with the data
############# plot(Hypothesis2$'PCE', Hypothesis2$'Death_covid-19')

## create a "linear model" - that is, do the regression
help(lm)
Hypothesis2.regression <- lm(Hypothesis2$liquor ~ Hypothesis2$`Death-COVID-19`+Hypothesis2$`AoD`, data=Hypothesis2)
## generate a summary of the regression
summary(Hypothesis2.regression)

