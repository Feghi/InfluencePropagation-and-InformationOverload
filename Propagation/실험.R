k=2
limit=5

ptm<-proc.time()
result=ranpro(g,k)
result
block(g,result$Seed)
proc.time() - ptm

ptm<-proc.time()
result=degreepro(g,k)
result
block(g,result$Seed)
proc.time() - ptm


ptm<-proc.time()
result=celf(g,k)
result
block(g,result$Seed)
proc.time() - ptm


ptm<-proc.time()
result=lidh(g,k,limit)
result
block(g,result$Seed)
proc.time() - ptm

ptm<-proc.time()
cluspro(g,k)
proc.time() - ptm

