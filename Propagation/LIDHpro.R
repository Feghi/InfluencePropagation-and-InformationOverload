LIDH<-function(g,threshold,k)
{
  library(igraph)
  
  Seed<-vector(length=k)
  
  #===================================================
  #given arc weight �� threshold ��
  m<-get.adjacency(g)
  l<-length(m[1,])
  sigma<-vector(length=l)
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
  sp<-shortest.paths(graph)
  for(i in 1:l){
    for(j in 1:l){
      if(sp[i,j]==Inf){
        sp[i,j]=0
      }
    }
  }
  
  for(i in 1:l){
    sp[i,i]<-1
    for(j in 1:l){
      if(sp[i,j]>1){
        if(sp[i,j]<7)
        sp[i,j]<-1
        else
          sp[i,j]<-0
      }      
    }
    sigma[i]<-sum(sp[i,])
  }
  
  #====================================================
  # First Seed
  
  
  Seed[1]<-which.max(sigma)
  sigma[Seed[1]]=0
  
  temp <- sp[1,]
  #====================================================
  
  for(i in 2:k){
    for(j in 1:l){
      # Compute Marginal Gain
      sigma[j]<-sum(sp[j,])-sum(temp & sp[j,])
      
    }
    
    Seed[i]<-which.max(sigma)
    temp <- temp | sp[Seed[i],]
    sigma[Seed[i]]=0
    
  }
  #====================================================
  
  Propagation<<-sum(temp)
  return(Propagation)
}