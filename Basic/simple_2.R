#生成摘要统计量与直方图

setwd('H:/R/My_R_DataAnalysis/Basic') #修改工作空间
options() #显示当前选项
options(digits=3) #设置有效数字为小数点后三位
x <- runif(20) #创建一个包含20个均匀分布随机变量的向量
summary(x) #生成摘要统计量
hist(x) #直方图
savehistory() #保存命令历史
save.image() #保存工作空间