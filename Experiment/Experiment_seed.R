g<-erdos.renyi.game(1000,0.002,directed = TRUE)
g<-watts.strogatz.game(1,1000,2,0.05)
g<-barabasi.game(1000,1,2,directed = T)
g<-graph.adjacency(t(as_adjacency_matrix(g)),mode=c("directed"))

#=================================Start===============================
g<-barabasi.game(1000,1,1,directed = T)
g<-graph.adjacency(t(as_adjacency_matrix(g)),mode=c("directed"))


k=5
limit=6

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
