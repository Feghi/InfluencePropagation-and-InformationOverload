ranpro<-function(g,k)
{
  
  library(igraph)
  
  n<-vcount(g)
  
  sigma<-vector(length=n)
  pro<-vector(length=n)
  
  Seed<-sample(1:n,k)

  
  sp<-shortest.paths(g,mode = c("out"))
  sp<-is.finite(sp)
  sp<-TRUE&sp
  
  
  
  for(j in 1:k)
  {
    pro<-pro|sp[Seed[j],]
  }
  
  result<-list(Seed=Seed,Propagation=sum(pro))
  
  return(result)
  
}