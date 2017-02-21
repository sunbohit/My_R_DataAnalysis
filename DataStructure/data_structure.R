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