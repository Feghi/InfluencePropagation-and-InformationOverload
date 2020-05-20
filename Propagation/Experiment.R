g<-g1
threshold<-0.1

ptm<-proc.time()
c<-gap(g,3)
proc.time() - ptm
N<-length(c@exemplars)

mat<-array(list(),N)
ad<-array(list(),N)

for(i in 1:N){
  mat[[i]]<-apc(g,c,i)
}
ptm<-proc.time()
p=0
for(i in 1:N){
  cluster<-graph.adjacency(mat[[i]],mode=c("directed"))
  p<-p+CELF(cluster,0,1)
}
proc.time() - ptm
N
p

nseed<-length(c@exemplars)
ptm<-proc.time()
pro(g,threshold,nseed)
proc.time() - ptm

ptm<-proc.time()
Ranip(g,0.1,1)
proc.time() - ptm

g<-g1
threshold<-0.3

ptm<-proc.time()
c<-gap(g)
proc.time() - ptm
N<-length(c@exemplars)

mat<-array(list(),N)
ad<-array(list(),N)

for(i in 1:N){
  mat[[i]]<-apc(g,c,i)
}
ptm<-proc.time()
p=0
for(i in 1:N){
  cluster<-graph.adjacency(mat[[i]],mode=c("directed"))
  p<-p+pro(cluster,threshold,1)
}
proc.time() - ptm
N
p

nseed<-length(c@exemplars)
ptm<-proc.time()
pro(g,threshold,nseed)
proc.time() - ptm

ptm<-proc.time()
ranpro(g,threshold,nseed)
proc.time() - ptm


ptm<-proc.time()
ranpro(g1,0.1,1549)
proc.time() - ptm

ptm<-proc.time()
ranpro(g2,0.1,656)
proc.time() - ptm

ptm<-proc.time()
ranpro(g3,0.1,10)
proc.time() - ptm