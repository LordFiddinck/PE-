library(readxl) 
lixo<-read_excel("C:/Users/frede/OneDrive/Ambiente de Trabalho/Técnico/4/Probabilidades e Estatística/Projeto/ResiduosPerCapita.xlsx") 
datta<-data.frame(Ano=rep(c("2004", "2018"),each=3),Países=rep(c("AT - Áustria","GR - Grécia","FI - Finlândia"),2),Toneladasdelixo=as.numeric(c(lixo[[2]][[8]],lixo[[2]][[20]],lixo[[2]][[18]],lixo[[3]][[8]],lixo[[3]][[20]],lixo[[3]][[18]]))) 

install.packages("ggplot2") 
library(ggplot2) 
graph<-ggplot(data=datta,aes(x=Países,y=Toneladasdelixo,fill=Ano))+
  ggtitle("Evolução da Produção de Resíduos Per Capita em Países Europeus")+ 
  geom_bar(stat="Identity",color="White",position=position_dodge(0.95))+ 
  geom_text(aes(label=Toneladasdelixo),vjust=2,color="white",position=position_dodge(0.95),size=4)+ 
  scale_fill_manual(values=c("#00b0e6","#ff6666"))+ 
  theme_minimal()+ 
  labs(y="Resíduos Produzidos (toneladas)",x="País",size=10)+ 
  scale_x_discrete(limits=c( "AT - Áustria","GR - Grécia","FI - Finlândia"))+ 
  theme(axis.text=element_text(size=10),axis.title=element_text(size=12),legend.text=element_text(size=10),legend.title=element_text(size=12))+ 
  theme(axis.title.y=element_text(margin=margin(t=0,r=20,b=0,l=0)),axis.title.x=element_text(margin=margin(t=20,r=0,b=0,l=0)))+ 
  theme(plot.title=element_text(color="black",size=14,hjust=0.5,margin=margin(t=0,r=0,b=30,l=0))) 
graph 

