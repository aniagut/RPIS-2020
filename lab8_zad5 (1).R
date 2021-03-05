lambda<-(1/90)*(0*12+1*20+2*27+3*18+4*7+5*3+6*2+7*1)
#1 sposob
result<-1-ppois(3,lambda)
#2 sposob
result1<-1-(dpois(0,lambda)+dpois(1,lambda)+dpois(2,lambda)+dpois(3,lambda))


