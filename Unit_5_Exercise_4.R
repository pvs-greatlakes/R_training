x <-  c(177,163,173,182,171,168,174,184)
y <-  c(71,67,77,85,69,62,73,80)
reg1= lm( x ~ y)
summary(reg1)
intercept = coefficients(reg1)[1]
slope = coefficients(reg1)[2]
print(summary(reg1))
if (slope >= 0 ) cat("\n Regression equation: x = ", intercept, " + ",slope," * x \n")
if (slope < 0 ) cat("\n Regression equation: x = ", intercept, " + ",slope," * x \n")
par(lab=c(20,20,10))
plot(y,x,xlab = "Height of seed in cms",ylab="Weight of seed in Kgms")
grid()
linear.model <- lm ( x ~ y)
predictx60 <- predict(linear.model,list(x,y=60)) # to find value of x when y = 60
predictx <- predict(linear.model,list(x,y)) 
cat("\n Estimated value of x, when y = 60 is ",predictx60,"\n")
abline(lm(x ~ y),col=6,lty=2)

