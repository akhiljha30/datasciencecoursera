z<-read.table("household_power_consumption.txt",sep=';',header=TRUE)
y<-subset(z, z$Date=="1/2/2007"|z$Date=="2/2/2007");
png("plot3.png", width=480, height=480)
y$DateTime<-strptime(paste(y$Date,y$Time),"%d/%m/%Y %H:%M:%S")
plot(y$DateTime,as.numeric(y$Sub_metering_1),type='l',ylab="Energy sub metering")
lines(y$DateTime,as.numeric(y$Sub_metering_2),col="red");
lines(y$DateTime,as.numeric(y$Sub_metering_3),col="blue")
legend("topright",legend=c("sub_metering_1","sub_metering_2","sub_metering_3"),col=c("black","red","blue"))
dev.off()