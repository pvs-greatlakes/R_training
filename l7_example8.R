#-------------------------------------------------------------------------------
#l7_example8.R
#-------------------------------------------------------------------------------
# Logistic Regression
#-------------------------------------------------------------------------------
am.glm	<- glm(formula=am ~ hp + wt,data = mtcars, family= binomial)
mydf = data.frame(hp=120,wt=2.8)
cat("\n\n The probability of a vehicle with 120 hp engine and weights 2800 lbs
 being fitted with a manual transmission is ",
predict(am.glm,mydf,type="response"),"\n")
#-------------------------------------------------------------------------------
