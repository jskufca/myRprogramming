A=read.csv("hw1_data.csv")

names(A)

head(A,2)

tail(A,2)

A$Ozone[47]

sum(is.na(A$Ozone))

mean(A$Ozone,na.rm=T)

good=(A$Ozone>31 & A$Temp>90)
mean(A$Solar.R[good],na.rm=T)

mean(A$Temp[A$Month==6])

max(A$Ozone[A$Month==5],na.rm=T)

