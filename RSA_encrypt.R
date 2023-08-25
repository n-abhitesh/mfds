#Encryption calculating function
Modcalci <- function(m,e,N) {
  m1=m
  for(x in 1:e)
  {
    c=m1%%N
    m1=c*m
    #cat(c,m1,"\n")
  }
  return(c)
}
#Modulo inverse function
Modinv<- function(a,m) {
  for(x in 1:m-1)
  {
    if((a*x) %% m == 1)
      return(x)
  }
}
# GCD function
GCD <- function(x, y) {
  while(y) {
    temp = y
    y = x %% y
    x = temp
  }
  return(x)
}
# code for (i)
#RSA Key Creation
#Reading two primes
p=readline("Enter first prime: ")
q=readline("Enter second prime: ")
p=as.integer(p)
q=as.integer(q)
N=p*q
# Choosing public encryption exponent
e=2
phi=(p-1)*(q-1)
while (e < phi)
{
  if (GCD(e, phi)==1)
    break
  else
    e=e+1
}
#Public Key
cat("The public key (N,e) is:","(",N,",",e,")")
m=as.integer(readline("Enter the plane text: "))
# code for (ii)
#RSA Encryption
c=Modcalci(m,e,N)
cat("Encrypted message =",c,"\n")
#code for (iii)
#Private Key
d=Modinv(e,phi)
cat("The private key is:","(",N,",",d,")","\n")