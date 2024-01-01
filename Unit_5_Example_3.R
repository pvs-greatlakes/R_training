# Create a matrix, m  to contain the sales figures
	r1 = c(25,39,36)  # East Coast
	r2 = c(36,42,24)
	r3 = c(31,39,28)
	r4 = c(26,35,29)
	r5 = c(51,43,42)  # West Coast
	r6 = c(47,39,36)
	r7 = c(47,53,32)
	r8 = c(52,46,33)
	m =matrix(cbind(r1,r2,r3,r4,r5,r6,r7,r8),nrow=8,ncol=3,byrow=TRUE)
# Concatenate the data rows in m into a single vector.
	r =c(t(m)) # response data
# Assign new variables for the treatment levels and number of observations
	f1 = c("Item1","Item2","Item3")         # 1st factor levels
	f2 = c("East","West")         	      # 2nd factor levels
	k1 = length(f1)          	              # Number of 1st factors
	k2 = length(f2)          	              # Number of 2nd factors
	n = 4          	                                # observations per treatment
# Create a vector that corresponds to 1st treatment level of the response data r
# - element-by-element with the gl function 
	tm1 = gl(k1,1,n*k1*k2,factor(f1))  
# Similarly, create a vector that corresponds to 2nd treatment level of the 
# response data r - element-by-element with the gl function
	tm2 = gl(k2,n*k1,n*k1*k2,factor(f2))  
# Apply the function aov to a formula that describes the response r by both 
# the treatment factors tm1 and tm2 with interaction
	av = aov(r ~ tm1 * tm2)  # include interaction
# Print out the ANOVA table with the summary function
	summary(av)
print(summary(av))