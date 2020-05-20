apc<-function(g,gap,k) #Induced Subgraph Extraction
{
  library(igraph)
  #Call library
    
  z<-gap@clusters[k]
  #initial value
  cluster<-sapply(z,c)
  
  
  g<-induced.subgraph(g,cluster)
  
  ad<-get.adjacency(g)

  return(ad)
}
