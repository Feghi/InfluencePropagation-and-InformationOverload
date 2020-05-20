# data Input
data<-read.csv("Data/twitter.txt",,sep='\t',header = T)
data=matrix(c(data[,1],data[,2]),ncol = 2)
g<-graph.edgelist(data,directed=T)


sum(is.finite(shortest.paths(g,63,mode = c("out"))))