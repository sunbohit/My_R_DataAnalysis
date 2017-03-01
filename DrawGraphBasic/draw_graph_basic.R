#R语言中的常用数据结构

setwd('H:/R/My_R_DataAnalysis/DrawGraphBasic') #修改工作空间
sink('draw_graph_basic.result', append=TRUE, split=TRUE) #输出重定向

dev.new()
jpeg("draw_graph_basic.jpg")
attach(mtcars) # 绑定数据框matcars
plot(wt, mpg) # 打开一个窗口并生成散点图
abline(lm(mpg~wt)) #用直线拟合
title("回归") #标题
detach(mtcars) #解绑定
dev.off()

# 输入数据的例子
dose  <- c(20, 30, 40, 45, 60)
drugA <- c(16, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)
dev.new()
jpeg("draw_graph_basic_2.jpg")
plot(dose, drugA, type="b") #作图，type="b"表示同时绘制点和线
dev.off()