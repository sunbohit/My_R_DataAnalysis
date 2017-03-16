#R语言中的常用数据结构

setwd('H:/R/My_R_DataAnalysis/DataManagement') #修改工作空间
sink('data_management.result', append=TRUE, split=TRUE) #输出重定向

# 创建数据框
manager <- c(1,2,3,4,5)
date <- c("10/24/08","10/28/08","10/1/08","10/12/08","5/1/09")
gender <- c("M","F","F","M","F")
age <- c(32,45,25,39,99)
q1 <- c(5,3,3,3,2)
q2 <- c(4,5,5,3,2)
q3 <- c(5,2,5,4,1)
q4 <- c(5,5,5,NA,2)
q5 <- c(5,5,2,NA,1)
leadership <- data.frame(manager,date,gender,age,q1,q2,q3,q4,q5, 
                         stringsAsFactors=FALSE)
						 
# 在数据框中创建新的变量
mydata<-data.frame(x1 = c(2, 2, 6, 4),
                   x2 = c(3, 4, 2, 8))
	#1
mydata$sumx <- mydata$x1 + mydata$x2
mydata$meanx <- (mydata$x1 + mydata$x2)/2
	#2
attach(mydata)
mydata$sumx <- x1 + x2
mydata$meanx <- (x1 + x2)/2
detach(mydata)
	#3
mydata <- transform(mydata,
                    sumx = x1 + x2,
                    meanx = (x1 + x2)/2)
					
# 变量重编吗
	#1
leadership$agecat[leadership$age > 75] <- "Elder"
leadership$agecat[leadership$age >= 55 &
                    leadership$age <= 75] <- "Middle Aged"
leadership$agecat[leadership$age < 55] <- "Young"
	#2
leadership <- within(leadership,{
  agecat <- NA
  agecat[age > 75] <- "Elder"
  agecat[age >= 55 & age <= 75] <- "Middle Aged"
  agecat[age < 55] <- "Young" })

# 变量重命名
names(leadership)
names(leadership)[2] <- "testDate"
leadership

library(plyr)
leadership <- rename(leadership,
                     c(manager="managerID", date="testDate"))
					 
# 判断缺失值
is.na(leadership[, 6:10])