# 2% of the items of a factory are defective. The items are
# packed in boxes. What is the probability that there will be
# (i) 2 defective items (ii) at most 5 defective items
# (iii) at least three defective items in a box of 100 items ?
# mean=n.p=100*2%=2
#code for (i)
dpois(2, lambda=2)
x=0:10
y=dpois(x,lambda=2)
plot(x,y,type="h",col="blue",lwd=2,
     main="Poisson Probability Distribution",xlab="No. of defective items",
     ylab="Probability P(X=r)")
#code for (ii)
ppois(5, lambda=2,lower.tail = TRUE)
#Alternate
sum(dpois(0:5,lambda=2))
#code for (iii)
ppois(2, lambda=2,lower.tail = FALSE)
x=0:8
y=ppois(x,lambda=2)
expr1 = expression(paste("Cumulative Probability",P(X<= r)))
plot(x,y,type="s",col="red",lwd=2,
     main="Cumulative Probability Distribution",
     xlab="No. of defective items",
     ylab=expr1)
#Generate 15 random numbers that follow Poisson distribution
#with mean=4.
rpois(15,lambda=4)