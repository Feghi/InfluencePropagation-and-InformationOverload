g<-erdos.renyi.game(1000*i,000.1,directed = TRUE)
g<-watts.strogatz.game(1,1000,1,0.02*i) 

#=================================Start===============================




r=matrix(0,2,10)
den=c(1:10)

for(i in 1:10)
  
{
  g<-erdos.renyi.game(100*i,000.1,directed = TRUE)
 
  
  den[i]=graph.density(g)
  
  a<-apcluspro(g)
  r[1,i]=a$Propagation
  b<-mcluspro(g)
  r[2,i]=b$Propagation
}


