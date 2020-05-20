apcluspro<-function(g)
{
  library(igraph)
  library(apcluster)
  
  n<-vcount(g)
  

      
      #==============================================================
      #==============Clustering======================================
      n<-vcount(g)
      
      
      sp<-shortest.paths(g,mode=c('in'))
      
      sp[is.infinite(sp)]<-0
      sp[sp==0]<-100
      
      #calculate p matrix
      #disconnected nodes give Max value
      
      pref<-mean(sp)
      diag(sp)<-pref
      sim<--sp
      
      #calculate similarity matrix
      
      apres<-apcluster(sim,maxits=1000)
      #==============================================================
      k=length(apres@exemplars)
      pro<-vector(length = k)
      
      for(i in 1:k)
      {
        z<-apres@clusters[[i]]
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

