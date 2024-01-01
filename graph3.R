#------------------------------------------------------------------
# graphs 3 - Box plot
#------------------------------------------------------------------
setwd("D:/R_data")
#
# Box plot of MPG by car cylinders
boxplot(mpg ~ cyl, data = mtcars, 
main = "Car Mileage Data",
xlab = "Number of Cylinders",
ylab = "Miles per Gallon")
#
