celf<-function(g,k)
{
  
  library(igraph)
  
  
  Seed<-vector(length=k)
  sigma<-vector(length=n)
  pro<-vector(length=n)

  # Evaluate sigma(v)
  n<-vcount(g)
  
  sp<-shortest.paths(g,mode = c("out"))
  sp<-is.finite(sp)
  sp<-TRUE&sp
  
  temp<-sp
  
  for(j in 1:k)
  {
    for(i in 1:n)
    {
      sigma[i]<-sum(temp[i,])
    }
    Seed[j]<-which(sigma==max(sigma))
    temp<-temp&!temp[Seed[j],]
    
    pro<-pro|sp[Seed[j],]
  }
 
  result<-list(Seed=Seed,Propagation=sum(pro))
  
  return(result)
  
}