x=read.csv(file.choose())
print(x)
n=length(x$a)
print(n)
mean=sum(x$a)/n
print(mean)

print(mean(x$a))

x1=x$a
sort(x1)
length(x1)
print(median(x1))

mode=names(table(x$a))[t==max(t)]
print(mode)