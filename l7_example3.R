#l7_example3.R
#--------------------------------------------------------------------
# chi.square test
#--------------------------------------------------------------------
g1					<- c(91,91,51)
g2					<- c(150,200,155)
g3					<- c(109,198,172)
df					<- data.frame(rbind(g1,g2,g3))
#--------------------------------------------------------------------
ch					<- chisq.test(df)
accept 			<- "accept"
reject 			<- "reject"
conclusion 		<- ifelse (ch$p.value >0.05,accept,reject)
cat("\n We frame hypotheses for this problem \n")
cat("\n H0: Medical check-up is independent of the age group")
cat("\n     at 0.05 significance level")
cat("\n H1: Medical check-up is dependent of the age group")
cat("\n     at 0.05 significance level")
cat("\n\n P-value:",ch$p.value)
line_accept1 	<- "Conclusion: p-value is greater than 0.05,"
line_accept2 	<- " Hence, we accept the null hypothesis,H0"
#
line_reject1 	<- "Conclusion: p-value is not greater than 0.05,"
line_reject2 	<- " Hence, we accept the alternative hypothesis,H1"
if (conclusion == "accept") {
cat("\n\n",line_accept1,"\n")
cat(line_accept2,"\n\n")
} else {
cat("\n\n",line_reject1,"\n")
cat(line_reject2,"\n\n")
}
