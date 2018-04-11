library(plotrix)

data<- read.table('DATAR.csv', sep=',', header = TRUE)
names(data)
attach(data)
summary(data)

taylor.diagram(data$TRMM, data$Emmanuel, pos.cor = F, show.gamma = T, sd.arcs = T,ref.sd = T,pcex = 2, normalize = T)
taylor.diagram(data$TRMM, data$Grell, pos.cor = T, show.gamma = T, sd.arcs = T,ref.sd = T,pcex = 2, normalize = T,add = T,col = 'blue', pch=15)
taylor.diagram(data$TRMM, data$Fritch, pos.cor = T, show.gamma = T, sd.arcs = T,ref.sd = T,pcex = 2, normalize = T, add = T,col = 'orange', pch = 17)

model.names <- c("Emmanuel","Grell","Fritch")

TRMM<- c(108.73, 172.09, 204.64)
Emm<- c(495.76, 299.10, 477.03)
Fri<- c(108.76, 172.09, 204.64)
Gre<- c(520.31, 615.51, 476.70)

taylor.diagram(TRMM, Emm, pos.cor = F, show.gamma = T, sd.arcs = T,ref.sd = T,pcex = 1, normalize = T)
taylor.diagram(TRMM, Gre, pos.cor = F, show.gamma = T, sd.arcs = T,ref.sd = T,pcex = 1, normalize = T,add = T,col = 'blue', pch=15)
taylor.diagram(TRMM, Fri, pos.cor = F, show.gamma = T, sd.arcs = T,ref.sd = T,pcex = 1, normalize = T, add = T,col = 'orange', pch = 17)
