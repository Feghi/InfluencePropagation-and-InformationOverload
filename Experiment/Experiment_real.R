g<-read.graph("Data/Wiki-Vote.txt",format=c("edgelist"))
g<-read.graph("Data/p2p-Gnutella.txt",format=c("edgelist"))
limit=6

k=5
r=matrix(0,6,k)
bl=matrix(0,5,k)
bu=matrix(0,5,k)

for(i in 1:k)
  
{
  
  a<-ranpro(g,i)
  r[1,i]=a$Propagation
  b<-degreepro(g,i)
  r[2,i]=b$Propagation
  c<-celf(g,i)
  r[3,i]=c$Propagation
  d<-lidh(g,i,limit)
  r[4,i]=d$Propagation
  e<-bitpro(g,i)
  r[5,i]=e$Propagation
  f<-cluspro(g,i)
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
