#R语言中的数据的输入操作

setwd('H:/R/My_R_DataAnalysis/DataStructure') #修改工作空间
sink('data_io.result', append=TRUE, split=TRUE) #输出重定向

# 通过数据框，用键盘输入数据
mydata <- data.frame(age=numeric(0), gender=character(0), weight=numeric(0))
mydata <- edit(mydata)