# http://www.cyclismo.org/tutorial/R/probability.html

# “d” returns the height of the probability density function

dnorm(0)
dnorm(0)*sqrt(2*pi)
dnorm(0,mean=4)
dnorm(0,mean=4,sd=10)
v <- c(0,1,2)
dnorm(v)
x <- seq(-20,20,by=.1)
y <- dnorm(x)
plot(x,y)
y <- dnorm(x,mean=2.5,sd=0.1)
plot(x,y)

# “p”  returns the cumulative density function

pnorm(0)
pnorm(1)
pnorm(0,mean=2)
pnorm(0,mean=2,sd=3)
v <- c(0,1,2)
pnorm(v)
x <- seq(-20,20,by=.1)
y <- pnorm(x)
plot(x,y)
y <- pnorm(x,mean=3,sd=4, lower.tail=FALSE)
plot(x,y)

pnorm(0,lower.tail=FALSE)
pnorm(1,lower.tail=FALSE)
pnorm(0,mean=2,lower.tail=FALSE)

# “q”  returns the inverse cumulative density function (quantiles)

qnorm(0.5)
qnorm(0.5,mean=1)
qnorm(0.5,mean=1,sd=2)
qnorm(0.5,mean=2,sd=2)
qnorm(0.5,mean=2,sd=4)
qnorm(0.25,mean=2,sd=2)
qnorm(0.333)
qnorm(0.333,sd=3)
qnorm(0.75,mean=5,sd=2)
v = c(0.1,0.3,0.75)
x <- seq(0,1,by=.05)
y <- qnorm(x)
plot(x,y)
y <- qnorm(x,mean=3,sd=2)
plot(x,y)
y <- qnorm(x,mean=3,sd=0.1)
plot(x,y)

# “r”  returns randomly generated numbers

rnorm(4)
rnorm(4,mean=3)
rnorm(4,mean=3,sd=3)
y <- rnorm(200)
hist(y)
y <- rnorm(200,mean=-2)
hist(y)
y <- rnorm(200,mean=-2,sd=4)
hist(y)
qqnorm(y)
qqline(y)


