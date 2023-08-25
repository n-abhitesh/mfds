A=matrix(c(1:25), nrow=5, ncol=5, byrow=TRUE)
print(A)
rownames(A)=c("R1", "R2", "R3", "R4", "R5")
colnames(A)=c("C1", "C2", "C3", "C4", "C5")
print(A)
print(rowSums(A))
print(colSums(A))
print(sum(rowSums(A)))
print(sum(colSums(A)))


#Algebraic Operations

A=matrix(c(1:25), nrow = 5, ncol = 5, byrow = TRUE)
print(A)
B=matrix(c(1:25), nrow=5, ncol=5)
print(B)
print(A+B)
print(A-B)
print(A%*%B)

