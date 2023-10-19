library(readr)
library(dplyr)
Pancancer_TMB <- read_csv("Pancancer_20_gene_TMB.csv")
ctype<-as.data.frame(table(Pancancer_TMB$cancertype))
ctype<-ctype%>%filter(Freq>100)
ctype<-ctype$Var1

pancancer_r2<-NULL

for (i in ctype){
  dat<-Pancancer_TMB%>%filter(cancertype==i)
  r2<-1 - sum((dat$mut_num - dat$`20 gene TMB`)^2) / sum((dat$mut_num - mean(dat$mut_num))^2)
  cr2<-data.frame(i,r2)
  pancancer_r2<-rbind(pancancer_r2,cr2)
}
pancancer_r2<-pancancer_r2%>%filter(r2>0)
pancancer_r2<-arrange(pancancer_r2,r2)
pancancer_r2$i<-gsub('TCGA-','',pancancer_r2$i)
write.csv(pancancer_r2,file = 'pancancer_r2.csv',row.names = F)