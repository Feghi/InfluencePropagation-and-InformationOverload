mcluspro<-function(g)
{
  library(igraph)
  library(MCL)
  
  n<-vcount(g)
  

      #==============================================================
      #==============Clustering======================================
      n<-vcount(g)
      adj<-get.adjacency(g)
      
      
      mclres<-mcl(x = adj, addLoops=TRUE, ESM = TRUE)

      #==============================================================
      
      k=mclres$K
      l=strtoi(levels(factor(mclres$Cluster)))
      
      
      pro<-vector(length = k)
      
      for(i in 1:k)
      {
        z<-which(mclres$Cluster==l[i])
        sg<-induced.subgraph(g,z)
        sn<-vcount(sg)
        sigma<-vector(length=sn)
        gsp<-shortest.paths(sg,mode = c("out"))
        gsp<-is.finite(gsp)
        
        for(j in 1:sn)
        {
          sigma[j]<-sum(gsp[j,])
        }
        pro[i]<-max(sigma)
      }
      result<-list(Seed=k,Propagation=sum(pro))
      
      return(result)
    }