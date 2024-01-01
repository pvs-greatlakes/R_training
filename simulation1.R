# --------------------------------------------------------------------------------
# Function to build a risk analysis model 
# We estimate the first year net profit which depends on
# sales volume in units, price per unit, unit cost and fixed cost
# Based on your market research, you believe that there are equal chances that the
# market will be slow, ok  or hot
# Slow market, sales volume is 50000 units selling price $ 11.00
# OK market, sales volume is 75000 units selling price $ 10.00
# Hot market, sales volume is 100000 units selling price $ 8.00
# Unit cost varies from 5.50 to 7.50 with the most likely cost being 6.5
# We simulate this model 10000 times
# --------------------------------------------------------------------------------
# Check if the package triangle is already installed
if ("triangle" %in% rownames(installed.packages()) == FALSE)
{ install.packages("triangle")}
require(triangle)
monteSimulation	<-	function(n=10000) {
fixed_cost		=	120000
result		<-	numeric(0)
for ( i in 1:n) {
		r 			= 	sample(1:3,1)
		sales_volume	=	(r * 25000) + 25000
		sale_price		=	12- r
		unit_cost		=	rltriangle(1,5.50, 7.50,6.50)
#
		net_profit 		= 	sales_volume * (sale_price - unit_cost) - fixed_cost
		result		<-	c(result,net_profit)
	}
#print(class(result))
print(mean(result,na.rm=TRUE))
return(result)
#
}
threshold <- function(v, t, low.col="red", high.col="green") {
	d = density(v)
	l = length(d$x)
	n = length(d$x[d$x<t])
	plot(d)
	x = c(d$x[1:n], d$x[n])
	y = c(d$y[1:n], d$y[1])
	polygon(x,y, col=low.col)
	x = c(d$x[n], d$x[n:l])
	y = c(d$y[1], d$y[n:l])
	polygon(x, y, col = high.col)
	pct = c(length(v[v<t])/length(v), 1 - length(v[v<t])/length(v))
	pct = pct * 100   
	labels = c("below", "above")  
	labels = paste(labels, pct)
	labels = paste(labels, "%", sep="")  
	legend(min(d$x) ,max(d$y), labels, fill=c(low.col, high.col))
}
res	<-	monteSimulation(10000)
threshold(res, 100000)
