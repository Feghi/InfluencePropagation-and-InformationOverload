
g<-erdos.renyi.game(1000,0.001,directed = TRUE)

k=2
c<-celf(g,k)
e<-bitpro(g,k)
block(g,c$Seed)
blockub(g,c$Seed)-c$Propagation
block(g,e$Seed)
blockub(g,e$Seed)-e$Propagation

k=3
c<-celf(g,k)
e<-bitpro(g,k)
block(g,c$Seed)
blockub(g,c$Seed)-c$Propagation
block(g,e$Seed)
blockub(g,e$Seed)-e$Propagation

k=4
c<-celf(g,k)
e<-bitpro(g,k)
block(g,c$Seed)
blockub(g,c$Seed)-c$Propagation
block(g,e$Seed)
blockub(g,e$Seed)-e$Propagation

k=5
c<-celf(g,k)
e<-bitpro(g,k)
block(g,c$Seed)
blockub(g,c$Seed)-c$Propagation
block(g,e$Seed)
blockub(g,e$Seed)-e$Propagation

k=6
c<-celf(g,k)
e<-bitpro(g,k)
block(g,c$Seed)
blockub(g,c$Seed)-c$Propagation
block(g,e$Seed)
blockub(g,e$Seed)-e$Propagation

k=7
c<-celf(g,k)
e<-bitpro(g,k)
block(g,c$Seed)
blockub(g,c$Seed)-c$Propagation
block(g,e$Seed)
blockub(g,e$Seed)-e$Propagation

k=8
c<-celf(g,k)
e<-bitpro(g,k)
block(g,c$Seed)
blockub(g,c$Seed)-c$Propagation
block(g,e$Seed)
blockub(g,e$Seed)-e$Propagation

k=9
c<-celf(g,k)
e<-bitpro(g,k)
block(g,c$Seed)
blockub(g,c$Seed)-c$Propagation
block(g,e$Seed)
blockub(g,e$Seed)-e$Propagation

k=10
c<-celf(g,k)
e<-bitpro(g,k)
block(g,c$Seed)
blockub(g,c$Seed)-c$Propagation
block(g,e$Seed)
blockub(g,e$Seed)-e$Propagation