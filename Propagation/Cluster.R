cluster<-function(g,k)
{
  library(igraph)
  #Call library
  
  c<-clusters(g,mode=c("strong"))
  #clustering
  
  N<-length(c$members)
  n<-c$csize[k]
  cluster<-0
  #initial value
      
  for(i in 1:N){
    if(c$members[i]==k){
      cluster<-append(cluster,i)
    }
  }
  cluster<-cluster[-1]
  
  g<-induced.subgraph(g,cluster)
  
  return(g)
}
