nash<-function(g,k,p)
{
  
  library(igraph)
  
  
  Seed<-data.frame()
  sigma<-vector(length=n)
  pro<-vector(length=n)
  
  # Evaluate sigma(v)
  n<-vcount(g)
  
  sp<-shortest.paths(g,mode = c("out"))
  sp<-is.finite(sp)
  payoff<-0
  temp<-sp
  
  for(i in 1:(n-2))
  {
    for(j in (i+1):(n-1))
    {
      for(k in (j+1):n)
      {
        check<-sum(temp[i,]|temp[j,]|temp[k,])
        if(check>=p)
          {
            payoff<-sqrt((sum(temp[i,])-n/3)^2+(sum(temp[j,])-n/3)^2+(sum(temp[k,])-n/3)^2)
            Seed<-rbind(Seed,c(i,j,k,check,payoff))
        }
      }
    }
  }
  
  result<-Seed
  
  return(result)
}