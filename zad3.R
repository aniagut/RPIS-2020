library(ISLR)
mean(Auto$mpg[Auto$cylinders==4])
median(Auto$weight)
mean(Auto$mpg[Auto$year==72])
var(Auto$acceleration)
var(Auto$acceleration[Auto$origin==3])
sum(Auto$horsepower>mean(Auto$horsepower))
max(Auto$horsepower[Auto$weight<mean(Auto$weight)])
sum(Auto$mpg>mean(Auto$mpg))
min(Auto$cylinders[Auto$mpg>mean(Auto$mpg)])
sum(Auto$displacement==max(Auto$displacement))
max(Auto$weight[Auto$displacement<median(Auto$displacement)])
