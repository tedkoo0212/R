################
## JAHYUN KOO ##
## ECO321 HW4 ##
################

### load the dataset into R and call it 'data_wage'.
setwd("/Users/nypd_r0lla/Desktop/ECO321_R")

#read the csv file(dataset)
star_prj <- read.csv("STAR_project.csv", header=TRUE)

#reading data and creating dummy variables.
star_prj$smallclass <- as.factor(star_prj$smallclass)
star_prj$bigclass <- as.factor(ifelse(star_prj$smallclass == 0, 1, 0))

# Rather than linear regression, proceed with One-way analysis of Variance.

# Model 1
lm(testscore ~ smallclass, data = star_prj)
# Model 2
lm(testscore ~ bigclass, data = star_prj)
# Model 3
lm(testscore ~ smallclass + bigclass, data = star_prj)

help(ifelse)
# ifelse(test, yes, no)
help(as.factor)
help(lm)
# lm (formula, data, subset, weights, na.action,method = "qr", model = TRUE, 
# x = FALSE, y = FALSE, qr = TRUE,singular.ok = TRUE, contrasts = NULL, offset, ...)
