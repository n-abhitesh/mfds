z1=dnorm(680,mean=662,sd=32)
print(z1)
cat("No. of plots that yield 680 kg: ",
    ceiling(z1*1000))
x=400:900
y=dnorm(x,mean=662,sd=32)
plot(x,y,type="h",col="blue",lwd=2,
     main="Normal Probability Distribution",
     xlab="Yield in Kg per plot",ylab="Probability f(x)")

#code for (ii)
z2=pnorm(650,mean=662,sd=32,lower.tail = TRUE)
cat("No. of plots that yield below 650 kg: ",
    ceiling(z2*1000))
#code for (iii)
z3=pnorm(700,mean=662,sd=32,lower.tail = FALSE)
cat("No. of plots that yield above 700 kg: ",
    ceiling(z3*1000))
x=500:800
y=pnorm(x,mean=662,sd=32,lower.tail = TRUE)
expr1 = expression(paste("Cumulative Probability",P(X<= x)))
plot(x,y,type="l",col="red",lwd=2,
     main="Cumulative Probability Distribution",
     xlab="No. of one acre plots",
     ylab=expr1)
#Generate 15 random numbers that follow Poisson distribution
#with mean=4.
rpois(15,lambda=4)
