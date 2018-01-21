##########################
# BASIC CHARTING USING R #
##########################

###########################################################
# working directory
###########################################################
getwd()
#setwd("/home/iss-user/Desktop/workshop")
setwd("/media/sf_vm_shared_folder/my_github_repo/S-SB2018/Day1-2/R")
getwd()

mtcars

## count frequency for each category
counts_cyl = table(mtcars$cyl)
counts_cyl

## plot basic bar chart
barplot(counts_cyl)

## plot a simple histogram
hist(mtcars$mpg)


## plot histogram with specified bins
hist(mtcars$mpg, breaks=12, xlab="Miles Per Gallon", main="Histogram with 12 Bins")


boxplot(mtcars$mpg, main = "Boxplot of Miles/Gallon")

boxplot(mtcars$mpg~factor(mtcars$vs), main = "Boxplot of Miles/Gallon for Different Engine Types")


## basic scatter plot of MPG vs. Weight
plot(mtcars$wt, mtcars$mpg, main="Simple Scatter Plot of MPG vs. Weight", xlab="Car Weight (lbs/1000)", ylab="Miles Per Gallon")


## add a line to fit the data
abline(lm(mpg~wt, data = mtcars))


## more 'graphics' package information and examples 
library(help='graphics')
example('table')
example('barplot')
example('boxplot')
example('hist')
example('plot')
example('abline')
example('colors')

