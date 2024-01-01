#l7_example5.R
#--------------------------------------------------------------------
# ANOVA test
#--------------------------------------------------------------------
growth					<- c(75,72,73,61,67,64,62,63,68,72,
77,78,82,83,78,59,61,63)
sugar					<- c("C","C","C","F","F","F","S","S","S",
"D","D","D","B","B","B","A","A","A")
#--------------------------------------------------------------------
my_aov					<- aov(growth ~ sugar)
p_value				<- summary(my_aov)[[1]][["Pr(>F)"]][1]
accept 				<- "accept"
reject 				<- "reject"
conclusion 			<- ifelse (p_value > 0.05,accept,reject)
cat("\n We frame hypotheses for this problem \n")
cat("\n H0: There is no significant effect of treatment (diet) upon growth")
cat("\n     at 0.05 significance level")
cat("\n H1: There is a significant effect of treatment (diet) upon growth")
cat("\n     at 0.05 significance level")
cat("\n\n P-value:",p_value)
#
line_accept1 			<- "Conclusion: p-value is greater than 0.05"
line_accept2 			<- " Hence, we accept the null hypothesis,H0"
#
line_reject1 			<- "Conclusion: p-value is not greater than 0.05"
line_reject2 			<- " Hence, we accept the alternative hypothesis,H1"
#
if (conclusion == "accept") {
cat("\n\n",line_accept1,"\n")
cat(line_accept2,"\n\n")
} else {
	cat("\n\n",line_reject1,"\n")
	cat(line_reject2,"\n")
	tuk 				<- TukeyHSD(my_aov)
	line_3 			<- "From TukeyHSD post-adhoc analysis, we find the following treatments"
   line_4				<-	"are significantly different from other treatments and control:"
	cat("\n",line_3)
	cat("\n",line_4,"\n")
	k <- length(tuk$sugar[,1])
	j <- 0
	for (i in 1:k) {
		 conclusion_2 <- ifelse(tuk$sugar[i,"p adj"]> 0.05,accept,reject)
		 if (conclusion_2 == "reject")  {
		  j 	<- j +1; cat(" ",j,":",rownames(tuk$sugar)[[i]],sep=" ")
		  if (j %% 5 == 0) cat("\n")
		 }
	}
	cat("\n")
}
