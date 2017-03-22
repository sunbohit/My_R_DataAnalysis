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

# 缺失值重编码
leadership[age == 99, "age"] <- NA
leadership

# 在分析中排除缺失值
x <- c(1, 2, NA, 3)
y <- x[1] + x[2] + x[3] + x[4]
z <- sum(x)

x <- c(1, 2, NA, 3)
y <- sum(x, na.rm=TRUE)

# 移除不完整的观测
leadership
newdata <- na.omit(leadership)
newdata

# 读取日期数据
mydates <- as.Date(c("2007-06-22", "2004-02-13"))

strDates <- c("01/05/1965", "08/16/1975")
dates <- as.Date(strDates, "%m/%d/%Y")

# 自定义日期格式
today <- Sys.Date()
format(today, format="%B %d %Y")
format(today, format="%A")

# 日期的计算
startdate <- as.Date("2004-02-13")
enddate   <- as.Date("2009-06-22")
enddate - startdate

# 使用defftime的日期的计算
today <- Sys.Date()
dob <- as.Date("1956-10-12")
difftime(today, dob, units="weeks")