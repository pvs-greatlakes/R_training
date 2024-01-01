#==========================================================================================================================================================
# Example 1 - Anova table -  One way table
# To test the lifetime of batteries, 12 toy drummers are fitted with new batteries of three types: Amazing, Superlong, Endurance.
#==========================================================================================================================================================
# 
# check if the package gdata already exists and install if not installed
# 
if("gdata" %in% rownames(installed.packages()) == FALSE)
{ install.packages("gdata")}
#
# 
library(gdata)
#
dest_file <- "D:/R_data/GROUP-01/dataset_batterylife.xlsx"
#
# read data into variable dat_res
#
dat_res <- read.xls(dest_file,sheet="Battery_life",head=TRUE,blank.lines.skip=T)
#
meanx <- round(mean(dat$life,na.rm=T),digits=2)
#
cat("\nExample of solving ANOVA One- Way table   \n",file="Example_1_Result.doc",append=FALSE)
cat("\nThe mean life time of batteries is ",meanx," hours\n",file="Example_1_Result.doc",append=TRUE)
cat("\n\nIn this example, let us frame hypotheses as:\n",file="Example_1_Result.doc",append=TRUE)
cat("\n1. H0 (Null): The three types of battery have the same mean life time, estimated by:",meanx," hours.",file="Example_1_Result.doc",append=TRUE)
cat("\n2. H1 (Alternate): The three types of battery have the different mean life time, estimated by:",meanx," hours.","\n",file="Example_1_Result.doc",append=TRUE)
cat("\nLet us use P value to test the null hypothesis that data from all groups are drawn from populations with identical means. \n",file="Example_1_Result.doc",append=TRUE)
cat("\nIf the overall P value is large, the data do not give you any reason to conclude that the means differ.\n",file="Example_1_Result.doc",append=TRUE) 
# use anova (MODEL) to create an ANOVA table 
aov.life <- aov(lm(life ~ type, data = dat_res))
#
#  print the summary from the anova table
#
anova <- aov(life ~ type, data = dat_res)
cat("\n<----------------  ANOVA TABLE ------------>\n",file="Example_1_Result.doc",append=TRUE)
capture.output(summary(anova),file="Example_1_Result.doc",append=TRUE)
cat("<------------------------------------------>",file="Example_1_Result.doc",append=TRUE)
#
# Extract p-value
#
pval 			<- 	round(summary(aov.life)[[1]][["Pr(>F)"]][[1]],digits=2)
#
cat("\n",aov.life$p.value*100,"\n",file="Example_1_Result.doc",append=TRUE)
cat("From ANOVA test we had performed on the data, we observe that at 95% confidence level",file="Example_1_Result.doc",append=TRUE) 
cat("the probability of selecting a battery type with",file="Example_1_Result.doc",append=TRUE)
cat(sprintf("\nMean life time not same as the standard mean life is: %f",(pval*100)),"%","\n\n",sep = "",file="Example_1_Result.doc",append=TRUE)
concl_s1_ph1	<- 	"Since the p-value is "
less			<-	"less"
greater		<-	"not less"
concl_s1_ph2	<- 	"than the significance level of 0.05, "
concl_s2_ph1	<- 	"we"
less			<-	"less"
greater		<-	"greater"
accept		<-	"accept"
reject		<-	"reject"
concl_s2_ph2	<- 	"the null hypothesis, H0 (Null)"
accept_h0_1 	<- 	paste(concl_s1_ph1,greater,concl_s1_ph2)
accept_h0_2 	<- 	paste(concl_s2_ph1,accept,concl_s2_ph2)
#
reject_h0_1 	<- 	paste(concl_s1_ph1,less,concl_s1_ph2)
reject_h0_2 	<- 	paste(concl_s2_ph1,reject,concl_s2_ph2)
conclusion 		<- 	ifelse(pval > 0.05,"accept","reject")
if (conclusion == "accept") 
{
    cat("\n",accept_h0_1,file="Example_1_Result.doc",append=TRUE)
    cat(accept_h0_2,file="Example_1_Result.doc",append=TRUE)
    cat("\n\n\n*** Conclusion: The three types of battery have the same mean life time, estimated by ",meanx," hours. ***\n",file="Example_1_Result.doc",append=TRUE)
}else{
    cat("\n",reject_h0_1,file="Example_1_Result.doc",append=TRUE)
    cat("\n",reject_h0_2,file="Example_1_Result.doc",append=TRUE)
    cat("\n\n\n*** Conclusion: The three types of battery have the different mean life time, estimated by ",meanx," hours.***","\n",file="Example_1_Result.doc",append=TRUE)
}
#
# END OF PROGRAM
#==========================================================================================================================================================