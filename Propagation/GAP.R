gap<-function(graph,k){
  library(igraph)
  library(apcluster)
  
  #Call library
  
  data<-shortest.paths(graph,mode=c('out'))
  N<-nrow(data)
  for(i in 1:N){
    for(j in 1:N){
      if(data[i,j]==Inf){
        data[i,j]=0
      }
    }
  }
  
  #calculate p matrix
  
  dmax<-max(data)*10
  for(i in 1:N){
    for(j in 1:N){
      if(data[i,j]==0){
        data[i,j]=dmax
      }
    }
  }
  
  #disconnected nodes give Max value
  
  pref<-mean(data)
  for(i in 1:N){
    data[i,i]=pref
  }
  sim<--data
  
  #calculate similarity matrix
  
  apres<-apclusterK(sim,maxits=1000,K=k)
  return(apres)
  
  #Affinity Clustering
  
}