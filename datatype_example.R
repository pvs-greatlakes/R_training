# Four types of mode
# 1. Numeric
x <- rnorm(1000)
cat("\n mode is",mode(x),"and length is",length(x),"\n",sep=" ")
#
# 2. Character
y <- c("a","b","c","d","e","f","g")
cat("\n mode is",mode(y),"and length is",length(y),"\n",sep=" ")
#
# 3. Complex
z <- c(1+0i,1+2i,1+3i,1+4i,1+5i,1+6i,1+7i)
cat("\n mode is",mode(z),"and length is",length(z),"\n",sep=" ")
#
# 4. Logical
a1	<-	10^2
a2	<-	sqrt(100)
l <- c(a1==a2,a1>a2)
cat("\n mode is",mode(l),"and length is",length(l),"\n",sep=" ")


