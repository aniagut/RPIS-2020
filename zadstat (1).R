
m<-matrix(4,5,4)
m[3,2] <- 1
m[1,3] <- 2
m[2,4] <- 3
m


prob <- function(m) {
  m/sum(m)
}

m = prob(m)


boundary <- function(prob, i){
  v <- vector()
  if(i == 1){
    v <- rowSums(prob)
  }
  else if (i == 2){
    v <- colSums(prob)
  }
  v
}


boundary(m,1)
boundary(m,2)

conditional <- function(prob, i, v){
  vec <- vector()
  if(i == 1){
    vec <- prob[v,]/boundary(prob,i)[v]
  }
  else if (i == 2){
    vec <- prob[,v]/boundary(prob,i)[v]
  }
  vec
}


conditional(m,2,4)
conditional(m,1,3)
conditional(m,2,2)


mean <- function(prob, i){
  vX <- vector()
  vY <- vector()
  for(j in 1:nrow(prob)){
    vX[j] <- j*sum(prob[j,])
  }
  for(j in 1:ncol(prob)){
    vY[j] <- j*sum(prob[,j])
  }
  
  result <- c(sum(vX),sum(vY))
  if(!is.na(i) && (i==1 || i==2)){
      result[i]
  }
  else{
    result
  }
}


mean(m,NA)
mean(m,2)
mean(m,1)


covariance <-function(prob){
  var(prob)
}

covariance(m)

independent <- function(prob){
  sum = 0
  for(i in 1:nrow(prob)){
    for(j in 1:ncol(prob)){
      sum = sum + j*i*prob[i,j]
    }
  }
  print(sum)
  print(mean(prob,1) + mean(prob,2))
  if(sum == mean(prob,1) + mean(prob,2)){
    TRUE
  }
  else{
    FALSE
  }
}

independent(m)
  
  