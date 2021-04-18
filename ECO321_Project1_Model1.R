# April 17th 2021
# Jahyun Koo
# Hypothesis 1  
# Null Hypothesis : IV 'Death_covid-19' and 'PCE' does not fit into the simple linear regression model.
# Alternative Hypothesis : IV 'Death_covid-19' and 'PCE' does fit into the simple linear regression model. 
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

# install packages to analyze time-series dataset.
install.packages('tseries')
install.packages('lmtest')
library(tseries)
library(lmtest)

library(readxl)
Hypothesis1 <- read_excel("Project 1/Hypothesis1.xlsx")
View(Hypothesis1)

plot(Hypothesis1$`Death_covid-19` , Hypothesis1$PCE)
# scatter plot shows not a beautiful shape but i apply simple linear regression.

Hypothesis1 # print the data to the screen in a nice format

## plot a x/y scatter plot with the data
plot(Hypothesis1$PCE, Hypothesis1$Death_covid-19)

## create a "linear model" - that is, do the regression
help(lm)
Hypothesis1.regression <- lm(Hypothesis1$PCE ~ Hypothesis1$`tDeath_covid-19`, data=Hypothesis1)
## generate a summary of the regression
summary(Hypothesis1.regression)

## add the regression line to our x/y scatter plot
abline(Hypothesis1.regression, col="blue")

cor.test(Hypothesis1$`Death_covid-19`, Hypothesis1$PCE)
help("cor.test")
