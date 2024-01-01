# read data into variable
datavar <- read.table(file="dataset_batterylife.csv",head=TRUE,sep=",")
print(mean(datavar$life))
# use anova (MODEL) to create an ANOVA table 
aov.life <- aov(lm(life ~ type, data = datavar))
# print the summary from the anova table
summary(aov.life)
print(summary(aov.life))