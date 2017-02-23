#R语言中的数据的输入操作

setwd('H:/R/My_R_DataAnalysis/DataStructure') #修改工作空间
sink('data_io.result', append=TRUE, split=TRUE) #输出重定向

# 通过数据框，用键盘输入数据
mydata <- data.frame(age=numeric(0), gender=character(0), weight=numeric(0))
mydata <- edit(mydata) #或者使用 fix(mydata)
mydata

# 直接将数据嵌入到代码中
mydatatxt <- "
age gender weight
25 m 166
30 f 115
18 f 120
"
mydata <- read.table(header=TRUE, text=mydatatxt) #使用read.table()函数
mydata

#从带分隔符的文件中读数据
#使用read.table()函数。header为是否包含变量名，row.names为行索引，sep为分隔符
grades <- read.table("student.csv", header=TRUE, row.names="StudentID", sep=",")
grades #打印数据
str(grades) # 打印数据框结构
# 传入colClasses参数，控制每一列的数值类型
grades <- read.table("studentgrades.csv", header=TRUE, row.names="StudentID", sep=",",
                     colClasses=c("character", "character", "character", "numeric", "numeric", "numeric"))
grades #打印数据
str(grades) # 打印数据框结构