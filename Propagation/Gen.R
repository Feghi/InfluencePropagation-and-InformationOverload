#random arc 4times

n<-100
m<-4

g1<-erdos.renyi.game(1*n,1*n*m,type=c("gnm"))
g2<-erdos.renyi.game(2*n,2*n*m,type=c("gnm"))
g3<-erdos.renyi.game(3*n,3*n*m,type=c("gnm"))
g4<-erdos.renyi.game(4*n,4*n*m,type=c("gnm"))
g5<-erdos.renyi.game(5*n,5*n*m,type=c("gnm"))
g6<-erdos.renyi.game(6*n,6*n*m,type=c("gnm"))
g7<-erdos.renyi.game(7*n,7*n*m,type=c("gnm"))
g8<-erdos.renyi.game(8*n,8*n*m,type=c("gnm"))
g9<-erdos.renyi.game(9*n,9*n*m,type=c("gnm"))
g10<-erdos.renyi.game(10*n,10*n*m,type=c("gnm"))

rewiring=0.05

g1 <- watts.strogatz.game(1,1*n,m,rewiring)
g2 <- watts.strogatz.game(1,2*n,m,rewiring)
g3 <- watts.strogatz.game(1,3*n,m,rewiring)
g4 <- watts.strogatz.game(1,4*n,m,rewiring)
g5 <- watts.strogatz.game(1,5*n,m,rewiring)
g6 <- watts.strogatz.game(1,6*n,m,rewiring)
g7 <- watts.strogatz.game(1,7*n,m,rewiring)
g8 <- watts.strogatz.game(1,8*n,m,rewiring)
g9 <- watts.strogatz.game(1,9*n,m,rewiring)
g10 <- watts.strogatz.game(1,10*n,m,rewiring)

power=1

g1<-barabasi.game(1*n,power,m,directed=FALSE)
g2<-barabasi.game(2*n,power,m,directed=FALSE)
g3<-barabasi.game(3*n,power,m,directed=FALSE)
g4<-barabasi.game(4*n,power,m,directed=FALSE)
g5<-barabasi.game(5*n,power,m,directed=FALSE)
g6<-barabasi.game(6*n,power,m,directed=FALSE)
g7<-barabasi.game(7*n,power,m,directed=FALSE)
g8<-barabasi.game(8*n,power,m,directed=FALSE)
g9<-barabasi.game(9*n,power,m,directed=FALSE)
g10<-barabasi.game(10*n,power,m,directed=FALSE)

