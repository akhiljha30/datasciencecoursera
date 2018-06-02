z<-read.table("household_power_consumption.txt",sep=';',header=TRUE)
y<-subset(z, z$Date=="1/2/2007"|z$Date=="2/2/2007");
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2));
y$DateTime<-strptime(paste(y$Date,y$Time),"%d/%m/%Y %H:%M:%S")
y$Global_active_power<-as.numeric(y$Global_active_power)/1000;
plot(y$DateTime,as.numeric(y$Global_active_power),type='l',ylab="Global active Power(killowatts)")
plot(y$DateTime,y$Voltage,ylab="Voltage",xlab="datetime",type='l')
plot(y$DateTime,as.numeric(y$Sub_metering_1),type='l',ylab="Energy sub metering")
lines(y$DateTime,as.numeric(y$Sub_metering_2),col="red");
lines(y$DateTime,as.numeric(y$Sub_metering_3),col="blue")
legend("topright",legend=c("sub_metering_1","sub_metering_2","sub_metering_3"),col=c("black","red","blue"))
plot(y$DateTime,y$Global_reactive_power,ylab="Global reactive Power",xlab="datetime",type='l')
dev.off()
