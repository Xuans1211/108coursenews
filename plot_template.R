
#install.packages("showtext")
#如果沒有"showtext"這個套件的話就安裝一下

library(showtext)
library(tidyverse)

#下載台北黑體
font_install(source_han_sans(lang = "TW"))
showtext_auto()
font_families() #可以看你電腦現在有哪些字體(名稱)可以用
#下載過了就不用再下載了

my_theme<-theme(
    text=element_text(family="source-han-sans-tw"),
    plot.margin = margin(2, 2, 2, 2,"cm"),
    legend.position = "none",
    plot.title= element_text(hjust=0.5,vjust=4,face="bold",size=32),
    plot.caption = element_text(hjust=1,vjust=-4.5,face="bold",size=18),
    panel.grid.major = element_blank(),
    panel.background = element_blank(),
    axis.text = element_text(size=16),
    axis.text.x = element_text(margin=margin(t=15)),
    axis.text.y = element_text(margin=margin(r=15)),
    axis.ticks = element_blank(),
    axis.line.x = element_line(colour = "black",size=2),
    plot.background = element_rect(colour = "black", fill=NA, size=3)
    
)

g3<-g3+
    scale_y_continuous(expand = expansion(mult = c(0, 0.05)))+
    labs(title="標題放這大小32px",
            caption="註解可放這大小18px", #若沒註解的話這行就拿掉
            x=NULL,
            y=NULL)+
    my_theme
    
g3

#輸出圖片時請用這段code
png("chart/filename.png", #請自己打檔案名稱，"chart/"這段不要改
    width=1280,height=900,units="px") #大小及單位，這裡有需要再調
g3 #要輸出的那個圖，原本在你Rstudio裡叫什麼
dev.off() #執行完這行就會看到圖片輸出在chart資料夾了

