Ranip<-function(g,threshold,k)
{
  library(igraph)
  
  Seed<-vector(length=k)
  
  #===================================================
  #given arc weight ¿Í threshold ºñ±³
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
    for(j in 1:l){
      if(sp[i,j]>1){
        sp[i,j]<-1
      }      
    }
    sigma[i]<-sum(sp[i,])
  }
  
  #====================================================
  # Seed Choice
  if(k==1){
  ranseed<-sample(1:l,k)
  sp[ranseed[1],ranseed[1]]=1
  temp<-sp[ranseed[1],]
  }
  else{
  ranseed<-sample(1:l,k)
  sp[ranseed[1],ranseed[1]]=1
  temp<-sp[ranseed[1],]
  
  for(i in 2:k){
    sp[ranseed[i],ranseed[i]]=1
    temp <- temp | sp[ranseed[i],]
  }
  }
  #====================================================
  
  Propagation<<-sum(temp)
  return(Propagation)
}