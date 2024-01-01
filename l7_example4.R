#l7_example4.R
#--------------------------------------------------------------------
# chi.square test
#--------------------------------------------------------------------
smoke.frequency		<- c(11,189,19,17)
smoke.prob			<- c(0.045,0.795,0.085,0.075)
#--------------------------------------------------------------------
chi_2					<- chisq.test(smoke.frequency,p=smoke.prob)
accept 				<- "accept"
reject 				<- "reject"
conclusion 			<- ifelse (chi_2$p.value >0.05,accept,reject)
cat("\n We frame hypotheses for this problem \n")
cat("\n H0: The sample data supports the campus-wide survey")
cat("\n     at 0.05 significance level")
cat("\n H1: The sample data does not support the campus-wide survey")
cat("\n     at 0.05 significance level")
cat("\n\n P-value:",chi_2$p.value)
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
