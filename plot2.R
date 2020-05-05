library(dplyr)

a<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
a<-tbl_df(a)
a1<-subset(a,a$Date=="1/2/2007"|a$Date=="2/2/2007")
a2<-a1$Global_active_power
a3<-as.numeric(as.character(a2))
png("plot2.png", width=480, height=480)
datetime <- strptime(paste(a1$Date, a1$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(datetime, a3, type="l", xlab="", ylab="Global Active Power (kW)")
dev.off()