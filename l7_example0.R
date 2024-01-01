calculate_z	<-	function(meanx,popmean,sdx,n=1) {
			z_calc	<-	
			((meanx - popmean) /  (sdx/sqrt(n)))
			return(z_calc)
}
calculate_pval_gt196	<-	function(z) {
			cat("z is",z,"\n",sep=" ")
			p_val <- 1 - pnorm(z)
			cat("\n 1. p_val is",p_val,"\n",sep=" ")
			return(p_val)
}
calculate_pval_gt196_lt	<-	function(z) {
			cat("z is",z,"\n",sep=" ")
			p_val <- 0.5 - pnorm(z,lower.tail=TRUE)
			cat("\n 1. p_val is",p_val,"\n",sep=" ")
			return(p_val)
} 
calculate_pval_neg	<-	function(z) {
			cat("z is",z,"\n",sep=" ")
			p_val <-  0.5 - pnorm(z)
			cat("\n 3. p_val is",p_val,"\n",sep=" ")
			return(p_val)
}
calculate_lt_pval_neg	<-	function(z) {
			cat("z is",z,"\n",sep=" ")
			p_val <-  0.5 - pnorm(z,lower.tail=TRUE )
			cat("\n 3. p_val is",p_val,"\n",sep=" ")
			return(p_val)
}

calculate_pval_lt196_lt <-	function(z) {
			cat("z is",z,"\n",sep=" ")
			p_val <- pnorm(z,lower.tail=TRUE)
			cat("\n 2. p_val is",p_val,"\n",sep=" ")
			return(p_val)
}
calculate_pval_lt196_ut <-	function(z) {
			cat("z is",z,"\n",sep=" ")
			p_val <- 0.5 - pnorm(z,lower.tail=FALSE)
			cat("\n 2. p_val is",p_val,"\n",sep=" ")
			return(p_val)
}

calculate_pval_lt196 <-	function(z) {
			cat("z is",z,"\n",sep=" ")
			p_val <- pnorm(z,lower.tail=FALSE)
			cat("\n 2. p_val is",p_val,"\n",sep=" ")
			return(p_val)
}

#
z <- calculate_z(350,300,25)
calculate_pval_gt196(z)
z <- calculate_z(220,300,25)
calculate_pval_neg(z)
z <- calculate_z(260,300,25)
calculate_pval_neg(z)
z <- calculate_z(400,352,31)
calculate_pval_lt196(z)
z <- calculate_z(56,60,5)
calculate_pval_lt196_lt(z)
z <- calculate_z(60,60,5)
calculate_pval_gt196(z)
z <- calculate_z(45,60,5)
calculate_pval_neg(z)
z <- calculate_z(65,60,5)
calculate_pval_gt196_lt(z)






