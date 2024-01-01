#----------------------------------------------------------------------
# One tailed t - test
#----------------------------------------------------------------------
bottles.volume <- c(484.11,  459.49, 471.38, 512.01, 
494.48, 528.63, 493.64, 485.03, 473.88, 501.59, 
502.85, 538.08, 465.68, 495.03, 475.32, 529.41, 
518.13, 464.32, 449.08, 489.27)
#
t_test_val		<-	t.test(bottles.volume, mu=500,alternative="less",conf.level = 0.99)
#
cat("\n    In this example, the null hypothesis is")
cat("\n    The mean filling volume is not less than 500ml \n")
cat("\n    From the t test we had performed on the data, we observe\n") 
cat("\n    1. Mean bottle volume for sample is:",t_test_val$estimate,"ml",
"\n",sep = " ")
cat(sprintf("\n    2. Mean filling volume is likely to be less than: %f ",
t_test_val$conf.int[2]),sep="")
cat("\n       at 99% confidence level \n")
cat("\n    3. The probability of selecting a bottle with")
cat(sprintf("\n       a Mean filling volume less than 500 ml is: %f",(t_test_val$p.value*100)),
"%","\n\n",sep = "")
concl_s1_ph1	<- 	"    Since the p-value is "
less			<-	"less"
greater		<-	"not less"
concl_s1_ph2	<- 	"than the significance level of 0.01 "
concl_s2_ph1	<- 	"    we"
less			<-	"less"
greater		<-	"greater"
accept		<-	"accept"
reject		<-	"reject"
concl_s2_ph2	<- 	"the null hypothesis"
accept_h0_1 	<- 	paste(concl_s1_ph1,less,concl_s1_ph2)
accept_h0_2 	<- 	paste(concl_s2_ph1,accept,concl_s2_ph2)
#
reject_h0_1 	<- 	paste(concl_s1_ph1,greater,concl_s1_ph2)
reject_h0_2 	<- 	paste(concl_s2_ph1,reject,concl_s2_ph2)
conclusion 		<- 	ifelse(t_test_val$p.value > 0.01,"accept","reject")
if (conclusion == "accept") 
{
    cat("\n",accept_h0_1)
    cat("\n",accept_h0_2,"\n")
}else{
    cat("\n",reject_h0_1)
    cat("\n",reject_h0_2,"\n")
}
#
#----------------------------------------------------------------------
