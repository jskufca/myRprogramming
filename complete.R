# R-programming class, programming assignment 1

complete <- function(directory, id = 1:332) {
     ## 'directory' is a character vector of length 1 indicating
     ## the location of the CSV files
     
     ## 'id' is an integer vector indicating the monitor ID numbers
     ## to be used
     
     ## Return a data frame of the form:
     ## id nobs
     ## 1  117
     ## 2  1041
     ## ...
     ## where 'id' is the monitor ID number and 'nobs' is the
     ## number of complete cases
     nobs=id  #initialize size
     
     for (i in seq_along(id)) {
          filename=paste(directory,"/",formatC(id[i], width=3, flag="0"), ".csv",sep="")
          A=read.csv(filename)
          nobs[i]=sum(complete.cases(A))
          
     }
     
     data.frame(id,nobs)
     
     
}