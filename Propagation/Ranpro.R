ranpro<-function(g,threshold,k)
{
  library(igraph)
  
  Seed<-vector(length=k)
  
  #===================================================
  #given arc weight ¿Í threshold ºñ±³
  m<-get.adjacency(g)
  l<-length(m[1,])
  seed<-sample.int(l,k)
  
  sigma<-vector(length=k)
  zero<-matrix(0,ncol=l,nrow=l)
  for(i in 1:l){
    for(j in i:l){
      if(m[i,j]==1){
        if(runif(1,0,1)>threshold){
          zero[i,j]<-1
          zero[j,i]<-zero[i,j]
        }
      }
    }
  }
  #====================================================
  # Evaluate sigma(v)
   
  graph<-graph.adjacency(zero,mode=c("undirected"))
  sp<-matrix(nrow=l,ncol=k)
  for(i in 1:k){
    sp[,i]<-shortest.paths(graph,seed[i])
    for(j in i:l){
      if(sp[j,i]==Inf){
        sp[j,i]=0
      }
    }
  }
  
  for(i in 1:k){
    for(j in 1:l){
      if(sp[j,i]>1){
        sp[j,i]<-1
      }      
    }
  }

  #====================================================
  
  for(i in sample(1:k,2){
       
    sp[,1] <- sp[,1] | sp[,i]
        
  }
  #====================================================
  
  Propagation<-sum(sp[,1])
  return(Propagation)
}