r1 = c(38,22,14)
r2 = c(47,19,26)
r3 = c(39,8,11)
r4 = c(25,23,18)
r5 = c(42,31,5)
m =matrix(cbind(r1,r2,r3,r4,r5),nrow=5,ncol=3,byrow=TRUE)
# Concatenate the data rows in dfb into a single vector r 
r =c(t(m))                                  # response data
# Assign new variables for the treatment levels 
# and number of control blocks
f = c("1","2","3")                  # treatment levels
k = 3                                         # Number of treatment levels
n = 5                                          # Number of observations per treatment
# create a vector of treatment factors that corresponds to 
# each element in r with gl function
treatment = gl(k,1,n*k,factor(f))       # matching treatment
# apply the function aov to a formula that describes the 
# response r by both the treatment factor tm 
av = aov(r ~ treatment)
# print out the ANOVA table with the summary function
summary(av)
print(summary(av))