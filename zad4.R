##przykladowa przestrzeñ E
E=c(0.1,0.2,0.1,0.15,0.3,0.05,0.1)

N=length(E)

##funkcja event
event<-function(x) {
  res=rep(FALSE,N)
  l=length(x)
  for(i in 1:l){
    if(x[i]<=N){
      res[x[i]]=TRUE
    }
  }
  res
}

##przyklad u¿ycia
event1=event(c(5,6))
event1

##funkcja union-suma zdarzen
union <- function(e1,e2) {
  n=length(e1)
  res=rep(FALSE,n)
  for(i in 1:n){
    if(e1[i]==TRUE || e2[i]==TRUE){
      res[i]=TRUE
    }
  }
  res
}

##przyklad uzycia
sum1=union(c(FALSE,TRUE,FALSE,FALSE),c(TRUE,TRUE,FALSE,TRUE))
sum1

##funkcja intersect-czesc wspolna zdarzen
intersect<-function(e1,e2){
  n=length(e1)
  res=rep(FALSE,n)
  for(i in 1:n){
    if(e1[i]==TRUE && e2[i]==TRUE){
      res[i]=TRUE
    }
  }
  res
}

##przyklad uzycia
int1=intersect(c(FALSE,TRUE,FALSE,FALSE),c(TRUE,TRUE,FALSE,TRUE))
int1

##funkcja complement-dopelnienie zdarzenia
complement <- function(e){
  n=length(e)
  res=rep(FALSE,n)
  for(i in 1:n){
    if(e[i]==FALSE){
      res[i]=TRUE
    }
  }
  res
}

##przyklad uzycia
dop1=complement(c(TRUE,FALSE,FALSE,TRUE))
dop1

##funkcja prob-liczy prawdopodobienstwo zdarzenia event 
prob <- function(space,event){
  p=0
  n=length(event)
  for(i in 1:n){
    if(event[i]==TRUE){
      p=p+space[i]
    }
  }
  p
}

##przyklad uzycia
prob1=prob(E,c(TRUE,FALSE,FALSE,TRUE,FALSE,FALSE,TRUE))
prob1
