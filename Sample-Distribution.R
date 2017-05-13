
#This code is refered from Xuetangx.com of Tsinghua University

install.packages("distr")
library(distr)
par(mfrow=c(3,4))

# Illustration II: Central Limit Theorem
# 1. Uniform Distribution
uniform<-runif(10000, min = 0, max = 1)
hist(uniform, main="Uniform Distribution")
x_bar<-rep(NA,1000)
n<-2
for (i in 1:1000){
  x_bar[i]<-mean(sample(uniform,size=n,replace=F))
}
hist(x_bar,main="n=2")

n<-5
for (i in 1:1000){
  x_bar[i]<-mean(sample(uniform,size=n,replace=F))
}
hist(x_bar,main="n=5")


n<-30
for (i in 1:1000){
  x_bar[i]<-mean(sample(uniform,size=n,replace=F))
}
hist(x_bar,main="n=30")

#. Arcsine Distribution
A <- Arcsine()
arcsine<-r(A)(10000)
hist(arcsine,main="Arcsine Distribution")

x_bar<-rep(NA,1000)
n<-2
for (i in 1:1000){
  x_bar[i]<-mean(sample(arcsine,size=n,replace=F))
}
hist(x_bar,main="n=2")

n<-5
for (i in 1:1000){
  x_bar[i]<-mean(sample(arcsine,size=n,replace=F))
}
hist(x_bar,main="n=5")

n<-30
for (i in 1:1000){
  x_bar[i]<-mean(sample(arcsine,size=n,replace=F))
}
hist(x_bar,main="n=30")


chi1<-rchisq(10000,df=1)
hist(chi1,  main="Chi-square Distribution, df=1")
x_bar<-rep(NA,1000)
n<-2
for (i in 1:1000){
  x_bar[i]<-mean(sample(chi1,size=n,replace=F))
}
hist(x_bar,main="n=2")

n<-5
for (i in 1:1000){
  x_bar[i]<-mean(sample(chi1,size=n,replace=F))
}
hist(x_bar,main="n=5")


n<-30
for (i in 1:1000){
  x_bar[i]<-mean(sample(chi1,size=n,replace=F))
}
hist(x_bar,main="n=30")


