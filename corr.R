# R-programming assigmnet 1

corr <- function(directory, threshold = 0) {
     ## 'directory' is a character vector of length 1 indicating
     ## the location of the CSV files
     
     ## 'threshold' is a numeric vector of length 1 indicating the
     ## number of completely observed observations (on all
     ## variables) required to compute the correlation between
     ## nitrate and sulfate; the default is 0
     
     ## Return a numeric vector of correlations
     ## NOTE: Do not round the result!
     
     v=numeric()
     
     for (i in 1:332) {
          filename=paste(directory,"/",formatC(i, width=3, flag="0"), ".csv",sep="")
          A=read.csv(filename)
          good=complete.cases(A)
          if (sum(good)<threshold | sum(good)==0) next
          v=c(v,cor(A$sulfate,A$nitrate,use="complete.obs"))
          

          
     }
     
     v
     
     
     
     
     
}