
#THIS CODE SOURCE FILE IS FROM XUETANGX.COM OF TSINGHUA UNIVERSITY

par(mfrow=c(4,2))


uniform<-runif(10000, min = 0, max = 1)
hist(uniform, main="Uniform distribution")
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
hist(x_bar,main="n=10")


n<-30
for (i in 1:1000){
  x_bar[i]<-mean(sample(uniform,size=n,replace=F))
}
hist(x_bar,main="n=100")


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
hist(x_bar,main="n=10")


n<-30
for (i in 1:1000){
  x_bar[i]<-mean(sample(chi1,size=n,replace=F))
}
hist(x_bar,main="n=100")


