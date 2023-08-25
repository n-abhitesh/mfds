# BD problem1: A fair coin is tossed six times. Find the probability
#getting four heads.
x=4
dbinom(x,size=6,prob=0.5)
x=0:6
y=dbinom(x,size=6,prob=0.5)
#size=6, prob=0.5
plot(x,y,type="h",lwd=2,
     main="Binomial Probability Distribution", xlab="No. of successes r",
     ylab="Probability of r successes P(X=r)",col="blue")
#this graph gives the probabilities of getting heads 0 to 6
# BD problem2: Ten coins are thrown simultaneously. Find the
#probability of getting (i)at most five heads
#(ii)at least seven heads.
x=5
#prob=0.5, size=10
pbinom(x,size=10,prob=0.5,lower.tail=TRUE)
#Alternate
sum(dbinom(x=0:5,size=10,prob=0.5))
x=0:6
y=pbinom(x,size=6,prob=0.5)
#size=6, prob=0.5
expr1 = expression(paste("Cumulative Probability",P(X<= r)))
plot(x,y,type="s",lwd=2,
     main="Cumulative Probability Distribution",
     xlab="No. of successes r",
     ylab=expr1,col="red")
x=7-1
pbinom(x,size=10,prob=0.5,lower.tail=FALSE)
#BD Problem3: Generate 15 random numbers that follow binomial
#distribution with probability 0.2.
n=15
#prob=0.2, size=30
rbinom(n,size=30,prob=0.2)