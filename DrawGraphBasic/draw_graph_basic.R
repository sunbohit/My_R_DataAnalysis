#R语言中的常用数据结构

setwd('H:/R/My_R_DataAnalysis/DrawGraphBasic') #修改工作空间
sink('draw_graph_basic.result', append=TRUE, split=TRUE) #输出重定向

jpeg("draw_graph_basic.jpg")
attach(mtcars) # 绑定数据框matcars
plot(wt, mpg) # 打开一个窗口并生成散点图
abline(lm(mpg~wt)) #用直线拟合
title("回归") #标题
detach(mtcars) #解绑定
dev.off()