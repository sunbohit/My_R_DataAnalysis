# 比较两列数据的相关度

setwd("h://R")

age <- c(1,3,5,2,11,9,3,9,12,3)
weight <- c(4.4,5.3,7.2,5.2,8.5,7.3,6.0,10.4,10.2,6.1)
mean(weight) #平均值
sd(weight)   #标准差
cor(age,weight) #相关系数
jpeg(file="simple.jpeg")
plot(age,weight) #绘制散点图
dev.off()