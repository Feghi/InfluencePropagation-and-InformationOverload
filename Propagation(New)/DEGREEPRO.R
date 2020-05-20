degreepro<-function(g,k)
{
  
  library(igraph)
  
  n<-vcount(g)
  
  sigma<-vector(length=n)
  pro<-vector(length=n)
  
  Seed<-order(degree(g,mode=c("out")),decreasing = T)
  
  
  sp<-shortest.paths(g,mode = c("out"))
  sp<-is.finite(sp)
  sp<-TRUE&sp
  
  
  
  for(j in 1:k)
  {
    pro<-pro|sp[Seed[j],]
  }
  
  result<-list(Seed=Seed[1:k],Propagation=sum(pro))
  
  return(result)
  
}

