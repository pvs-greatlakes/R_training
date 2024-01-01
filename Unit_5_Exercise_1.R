r1 = c(10,12,7)
r2 = c(7,8,5)
r3 = c(5,6,4)
m =matrix(cbind(r1,r2,r3),nrow=3,ncol=3,byrow=TRUE)
# Concatenate the data rows in m into a single vector r 
r <-c(t(m)) # response data
# Assign new variables for the treatment levels 
# and number of control blocks
f = c("A","B","C")                 # treatment levels
k = 3                                         # Number of treatment levels
n = 3                                         # Number of control blocks
# create a vector of treatment factors that corresponds to 
# each element in r with gl function
block  = gl(k,1,n*k,factor(f))       # matching treatment
# similarly, create a vector of blocking variables for 
# each element in the response data r
diet = gl(n,k,k*n)       # blocking factor
# apply the function aov to a formula that describes the 
# response r by both the treatment factor block and 
# the control block diet
av = aov(r ~ block + diet)
# print out the ANOVA table with the summary function
summary(av)
print(summary(av))