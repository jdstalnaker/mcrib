porkPrices <- data.table (read_excel("Porkprices.xlsx", sheet = "pork",
                                     col_names = FALSE, col_types = c("numeric","numeric","numeric"), na = ""))

x<-as.matrix(porkPrices[,1])
x<-as.numeric(x)
x<-format(as.Date(x, "1899-12-30"), "%Y-%m-%d")
porkPrices[,1]<-x
rm(x)
colnames(porkPrices)<-c("Date", "Price", "% Change")

#Import McRib availability/
availableMcrib<-data.table (read_excel("available.xlsx", sheet = "available",
                                       col_names = FALSE, col_types = c("numeric","numeric"), na = ""))

x<-as.matrix(availableMcrib[,1])
x<-as.numeric(x)
x<-format(as.Date(x, "1899-12-30"), "%Y-%m-%d")
availableMcrib[,1]<-x
rm(x)

colnames(availableMcrib)<-c("Date", "Available?")

Data<-list()
Data$Pork<-porkPrices
Data$Available<-availableMcrib
Data$Full<-cbind(porkPrices,availableMcrib[,2])

rm(availableMcrib,porkPrices)

price<-as.data.frame(Data$Full[,2])
available<-as.data.frame(Data$Full[,4])

data<-cbind(available,price)

data<-subset(data, data[,1]>0)
count<-nrow(data)

data<-data[order(data[,2], decreasing = FALSE),]  
data[,1]<-seq(1,count,by=1)

rm(available,count,price)