df <- structure(list(x = c(1,2,3,4),y=c(2.18,2.44,2.78,3.25),class="data.frame"))
x2 <- df$x^2
quadratic.model <- lm(df$y ~ df$x + x2)
summary(quadratic.model)
xvalues <- seq(1,4,1)
predicty <- predict(quadratic.model,list(x=xvalues,x2=xvalues^2))
plot(df$x,df$y,pch=16,xlab="x",ylab="y",cex.lab=1.3)
par(lab = c(20,20,10))
grid()
lines(df$x,predicty, col = "red", lwd=3)

