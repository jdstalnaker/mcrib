#McRib availability relative to price of pork.
#@alreadyroses/ June 2022

source("packages.R")
options(warn=-1)
source("wrangledata.R")
options(warn=0)

plot<-ggplot(data, aes(x=data[,1], y=data[,2])) +
  geom_point() +
  geom_smooth(method=lm)


plot + labs( x = "Availability Instance", y = "Prices")

quantile(data[,2], .25)
quantile(data[,2], .5)
quantile(data[,2], .75)
min(data[,2])
max(data[,2])

points<-data.frame(matrix(ncol = 2, nrow = 5))
colnames(points)<-c("Metric","Price")
points[,1]<-c("Min","Q1","Q2","Q3","Max")
points[,2]<-c(min(data[,2]),quantile(data[,2], .25), quantile(data[,2], .5)
              ,quantile(data[,2], .75), max(data[,2]))
Data$Formatted<-data
rm(data)

cat("\f")
print(points)



