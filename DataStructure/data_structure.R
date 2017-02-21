#R语言中的常用数据结构

setwd('H:/R/My_R_DataAnalysis/DataStructure') #修改工作空间
sink('data_structure.result', append=TRUE, split=TRUE) #输出重定向

#  创建向量，使用组合函数c()
a <- c(1, 2, 5, 3, 6, -2, 4)
b <- c("one", "two", "three")
c <- c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE)

# 从向量中取元素，索引从1开始
a <- c(1, 2, 5, 3, 6, -2, 4)
a[3]
a[c(1, 3, 5)]
a[2:6]

# 创建矩阵，默认按列填充。设置参数byrow=TRUE则按行填充
y <- matrix(1:20, nrow=5, ncol=4) #创建一个5*4的矩阵
y
cells    <- c(1,26,24,68)
rnames   <- c("R1", "R2")
cnames   <- c("C1", "C2") 
mymatrix <- matrix(cells, nrow=2, ncol=2, byrow=TRUE, dimnames=list(rnames, cnames)) #创建一个2*2的矩阵，按行填充
mymatrix
mymatrix <- matrix(cells, nrow=2, ncol=2, byrow=FALSE, dimnames=list(rnames, cnames)) #创建一个2*2的矩阵，按列填充
mymatrix

# 从矩阵中取元素
x <- matrix(1:10, nrow=2)
x
x[2,]
x[,2]
x[1,4]
x[1, c(4,5)]    

# 创建一个数组
dim1 <- c("A1", "A2")
dim2 <- c("B1", "B2", "B3")
dim3 <- c("C1", "C2", "C3", "C4")
z <- array(1:24, c(2,3,4), dimnames=list(dim1, dim2, dim3))
z                 

# 创建一个数据框
patientID <- c(1, 2, 3, 4)
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Improved", "Excellent", "Poor")
patientdata <- data.frame(patientID, age, diabetes, status)
patientdata

# 从数据框中取元素
patientdata[1:2] #索引
patientdata[c("diabetes","status")] #列名
patientdata$age  #记号$