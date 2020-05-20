blockub<-function(g,seed)
{
  library(igraph)
  
  num<-length(seed)
  n<-vcount(g)
  
  if(num<=1)
  {
    return(0)
  }
  else
  {
    
    #===================================================
    #===============시드별 블로킹 계산==================
    blockingmat<-matrix(nrow=n,ncol=num)
    blocking<-rep(0,n)
    for(i in 1:num)
    {
      blockingmat[,i]<-is.finite(shortest.paths(g,seed[i],mode = c("out")))
    }
    for(j in 1:n)
    {
      blocking[j]<-sum(blockingmat[j,])
    }
    
    return(sum(blocking))
    
  }
}
