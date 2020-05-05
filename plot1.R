library(dplyr)

datafull<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
datafull<-tbl_df(datafull)
a<-subset(datafull,datafull$Date=="1/2/2007"|datafull$Date=="2/2/2007")
b<-a$Global_active_power
c<-as.numeric(as.character(b))
png("plot1.png",width=480,height=480)
hist(c,main="Global Active Power",xlab="Global Active Power (kilowatt)", ylab="Frequency",col="red")
dev.off()