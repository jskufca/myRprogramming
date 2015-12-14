# Code for R-programming class - Programming Assignment 1



pollutantmean <- function(directory, pollutant, id = 1:332) {
     ## 'directory' is a character vector of length 1 indicating
     ## the location of the CSV files
     
     ## 'pollutant' is a character vector of length 1 indicating
     ## the name of the pollutant for which we will calculate the
     ## mean; either "sulfate" or "nitrate".
     
     ## 'id' is an integer vector indicating the monitor ID numbers
     ## to be used
     
     ## Return the mean of the pollutant across all monitors list
     ## in the 'id' vector (ignoring NA values)
     ## NOTE: Do not round the result!
     
     s=0  # running sum
     n=0  # included entries
     
     for (i in id) {
          filename=paste(directory,"/",formatC(i, width=3, flag="0"), ".csv",sep="")
          A=read.csv(filename)
          s=s+sum(A[pollutant],na.rm=T)
          n=n+sum(!is.na(A[pollutant]))
          
     }
     
     s/n
}