g<-erdos.renyi.game(1000,0.002,directed = TRUE)

#=================================Start===============================



k=4
limit=6

r=matrix(0,6,6)
bl=matrix(0,5,6)
bu=matrix(0,5,6)
den=c(1:6)

for(i in 1:6)
  
{

  
  den[i]=graph.density(g)
  
  a<-ranpro(g,k)
  r[1,i]=a$Propagation
  b<-degreepro(g,k)
  r[2,i]=b$Propagation
  c<-celf(g,k)
  r[3,i]=c$Propagation
  d<-lidh(g,k,limit)
  r[4,i]=d$Propagation
  e<-bitpro(g,k)
  r[5,i]=e$Propagation
  f<-cluspro(g,k)
  r[6,i]=f$Propagation
  
  bl[1,i]=block(g,a$Seed)
  bl[2,i]=block(g,b$Seed)
  bl[3,i]=block(g,c$Seed)
  bl[4,i]=block(g,d$Seed)
  bl[5,i]=block(g,e$Seed)
  
  
  bu[1,i]=blockub(g,a$Seed)
  bu[2,i]=blockub(g,b$Seed)
  bu[3,i]=blockub(g,c$Seed)
  bu[4,i]=blockub(g,d$Seed)
  bu[5,i]=blockub(g,e$Seed)
}


