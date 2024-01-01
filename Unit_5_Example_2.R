r1 = c(31,27,24)
r2 = c(31,28,31)
r3 = c(45,29,46)
r4 = c(21,18,48)
r5 = c(42,36,46)
r6 = c(32,17,40)
m =matrix(c(r1,r2,r3,r4,r5,r6),nrow=6,ncol=3,byrow=TRUE)
# Concatenate the data rows in dfb into a single vector r 
r =c(t(m))                                  # response data
# Assign new variables for the treatment levels 
# and number of control blocks
f = c("A","B","C")                  # treatment levels
k = 3                                          # Number of treatment levels
n = 6                                          # Number of control blocks
# create a vector of treatment factors that corresponds to 
# each element in r with gl function
tm = gl(k,1,n*k,factor(f))       # matching treatment
# similarly, create a vector of blocking variables for 
# each element in the response data r
blk = gl(n,k,k*n)                     # blocking factor
# apply the function aov to a formula that describes the 
# response r by both the treatment factor tm and 
# the block control blk
av = aov(r ~ tm + blk)
# print out the ANOVA table with the summary function
summary(av)
print(summary(av))
