#Compute GCD using Euclidean Algorithm
# take input from the user
GCD <- function(x, y) {
  while(y) {
    temp = y
    y = x %% y
    cat(x,"=",temp,"*",x %/% temp,"+",y,"\n")
    x = temp
  }
  return(x)
}
num1 = as.integer(readline(prompt = "Enter first number: "))
num2 = as.integer(readline(prompt = "Enter second number: "))
print(paste("The G.C.D. of", num1,"and", num2,"is",GCD(num1, num2)))