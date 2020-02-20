setwd("C:\\Users\\Administrator\\Desktop\\interview")
sh1<-read.csv('Sheet1.csv')
sh2<-read.csv('Sheet2.csv')

dim(sh1)
dim(sh2)

library(dplyr)
discrep <- mapply(setdiff, sh1, sh2)
discrep

num.discrep <- sapply(discrep, length)
num.discrep

similarity_percentage <- (num.discrep/9016)*100
similarity_percentage

write.csv(similarity_percentage,"result.csv")