#library(ggplot2)
library(dplyr)
#library(plyr)
library(quantmod)
library(RCurl)
#library(RQuantLib)
library(xts)
library(lattice)
library(ggvis)

#https://en.wikipedia.org/wiki/List_of_economic_crises

tulip.price <- c(22  ,61  ,38  ,51  ,61  ,97  ,176  ,199  ,202  ,178  ,148  ,145  ,11  ,30)
tulip.date <- c('01-12-1634' ,'01-05-1636' ,'01-06-1636'    ,'01-07-1636' ,'01-08-1636'   ,'01-11-1636' ,'01-12-1636'  ,'01-02-1637' ,'03-02-1637' ,'05-02-1637' ,'09-02-1637' ,'11-02-1637' ,'01-05-1637'   ,'01-01-1642'      )
tulip.date.f <- strptime(tulip.date, format = "%d-%m-%Y")
tulip.xts <-  xts(tulip.price, order.by= tulip.date.f )



 getSymbols("DJIA", src="yahoo", from=as.Date('1925-01-01'), to=as.Date('1935-01-01'))
 djia <- DJIA




getSymbols("^ixic",  src = "yahoo", from = as.Date("1995-01-01"), to = as.Date("2003-01-01"))

WIG.INFO <- getStooqData.xts("wig_info") %>% dot.com.bubble
ACP <- getStooqData.xts("acp") %>% dot.com.bubble #Asseco Poland SA
CDR <- getStooqData.xts("cdr") %>% dot.com.bubble #CD Projekt SA 
CMR <- getStooqData.xts("CMR") %>% dot.com.bubble #Comarch SA
SGN <- getStooqData.xts("SGN") %>% dot.com.bubble #Sygnity SA



Wig20 <- getStooqData.xts("Wig20") %>% last.from2005 

wibor <- getStooqData.xts("PLOPLN3M") %>% last.from2005


shbs   <- getStooqData.xts("^shbs") %>% last.from2005
shc <- getStooqData.xts("^shc") %>% last.from2005
hsi <- getStooqData.xts("^hsi") %>% last.from2005




xauusd <- getStooqData.xts("xauusd")
xuapln <- getStooqData.xts("xaupln")

gold <-  xuapln["1985::"] /xauusd["1985::"] 
cur <- getStooqData.xts("usdpln")



#spx <-  getStooqData('^SPX')
#name(spx) <- spx[,1]
#spx.xts <- xts(spx[,-1],order.by=as.POSIXct(spx$Date))
#spx.xts.19101935 <-  spx.xts["1910/1935"]$Close


#getSymbols("USD3MTD156N",src="FRED")
#chartSeries(USD3MTD156N ['2000/2009'], name = "Libor 3M", theme = 'white')




