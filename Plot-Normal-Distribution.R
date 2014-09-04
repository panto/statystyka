# http://msenux.redwoods.edu/math/R/normal.php

x=seq(-4,4,length=200)
y=1/sqrt(2*pi)*exp(-x^2/2)
plot(x,y,type="l",lwd=2,col="red")

# An Alternate Approach

x=seq(-4,4,length=200)
y=dnorm(x,mean=0,sd=1)
plot(x,y,type="l",lwd=2,col="red")

# The Standard Deviation

x=seq(-8,8,length=500)
y1=dnorm(x,mean=0,sd=1)
plot(x,y1,type="l",lwd=2,col="red")
y2=dnorm(x,mean=0,sd=2)
lines(x,y2,type="l",lwd=2,col="blue")

x=seq(-8,8,length=500)
y3=dnorm(x,mean=0,sd=1/2)
plot(x,y3,type="l",lwd=2,col="green")
y2=dnorm(x,mean=0,sd=2)
lines(x,y2,type="l",lwd=2,col="blue")
y1=dnorm(x,mean=0,sd=1)
lines(x,y1,type="l",lwd=2,col="red")
legend("topright",c("sigma=1/2","sigma=2","sigma=1"), lty=c(1,1,1),col=c("green","blue","red"))
