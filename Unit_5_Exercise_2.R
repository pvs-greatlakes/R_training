r1 = c(10.1,12.2,11.9)
r2 = c(11.4,12.9,12.7)
r3 = c(9.9,12.3,11.4)
r4 = c(12.1,13.4,12.9) 
m =matrix(cbind(r1,r2,r3,r4),nrow=4,ncol=3,byrow=TRUE)
# Concatenate the data rows in m into a single vector r 
r <-c(t(m)) # response data
# Assign new variables for the treatment levels 
# and number of control blocks
f = c("A","B","C","D")          # treatment levels
k = 3                                         # Number of treatment levels
n = 4                                          # Number of control blocks
# create a vector of treatment factors that corresponds to 
# each element in r with gl function
block = gl(k,1,n*k,factor(f))       # matching treatment
# similarly, create a vector of blocking variables for 
# each element in the response data r
chemical = gl(n,k,k*n)       # blocking factor
# apply the function aov to a formula that describes the 
# response r by both the treatment factor tm and 
# the block control blk
av = aov(r ~ block + chemical)
# print out the ANOVA table with the summary function
summary(av)
print(summary(av))