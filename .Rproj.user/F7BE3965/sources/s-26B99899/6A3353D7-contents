
library(showtext)
library(tidyverse)
P0<-df_2019 %>%
    ggplot(aes(x=income,y=perc,fill=income))+
    geom_bar(stat = "identity",width = 0.7)+
    geom_text(aes(label=percentage),hjust=1.2,size=5)+
    coord_flip()+
    labs(title="標題放這裡",
         caption= "資料來源放這裡",x=NULL,y=NULL)+
    theme(
      legend.position = "none",
      plot.title= element_text(hjust=0.5,face="bold"),
      plot.caption = element_text(hjust=0.5,face="bold"),
      panel.grid.major = element_blank(),
      panel.background = element_blank(),
      axis.text.y = element_text(hjust = 1.4,margin=margin(r=0,l=0),size=10),
      axis.title.y = element_text(angle=0),
      axis.ticks = element_blank(),
      axis.text.x = element_blank(),
      aspect.ratio = 1.5/2.5,
      panel.border = element_rect(colour = "black", fill=NA, size=1)
    )+scale_fill_manual(values=c("#E0E0E0","#E0E0E0","#E0E0E0","#E0E0E0","#E0E0E0","#FFE66F"))
P0
