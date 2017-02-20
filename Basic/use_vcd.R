#安装并使用vcd包

setwd('H:/R/My_R_DataAnalysis/Basic') #修改工作空间

install.packages("vcd") #安装vcd包
help(package="vcd") #打开vcd包的帮助文档
library(vcd) #载入vcd包
help(Arthritis) #打开Arthritis的描述。Arthritis显示了接收治疗的关节炎患者与接收安慰剂治疗的关节炎患者间的比较数据
Arthritis #显示数据
jpeg(file="H:/R/My_R_DataAnalysis/Basic/Arthritis.jpeg")
example(Arthritis)
dev.off()