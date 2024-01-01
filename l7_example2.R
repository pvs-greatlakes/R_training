a 				<- c(6,8,2,4,4,5)
b 				<- c(7,10,4,3,5,6)
w 				<- wilcox.test(a,b,correct=FALSE)
accept 			<- "accept"
reject 			<- "reject"
conclusion 		<- ifelse (w$p.value >0.05,accept,reject)
cat("\n Null hypothesis: Mean goals suffered by")
cat("\n both teams are same","\n")
cat("\n\n P-value:",w$p.value)
line_accept1 	<- "Conclusion: p-value is greater than 0.05,"
line_accept2 	<- " Hence, we accept the null hypothesis"
#
line_reject1 	<- "Conclusion: p-value is not greater than 0.05,"
line_reject1 	<- " Hence, we reject the null hypothesis"
if (conclusion == "accept") {
cat("\n\n",line_accept1,"\n")
cat(line_accept2,"\n\n")
} else {
cat("\n\n",line_reject1,"\n")
cat(line_reject2,"\n\n")
}

