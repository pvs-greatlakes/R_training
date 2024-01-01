df <- structure(list(x = c(1,3,5,7,9),y=c(3,10,36,77,150),class="data.frame"))
x2 <- df$x^2
quadratic.model <- lm(df$y ~ df$x + x2)
summary(quadratic.model)
print(summary(quadratic.model))
xvalues <- seq(1,9,2)
predicty <- predict(quadratic.model,list(x=xvalues,x2=xvalues^2))
plot(df$x,df$y,pch=16,xlab="x",ylab="y",cex.lab=1.3)
par(lab=c(10,10,7))
grid()
lines(xvalues,predicty, col = "red", lwd=3)

