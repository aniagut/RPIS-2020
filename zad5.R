#Pierwszy sposób
result <- 1 - ppois(4,2)
#Drugi sposób
result1 <- 1-(dpois(0,2)+dpois(1,2)+dpois(2,2)+dpois(3,2)+dpois(4,2))


