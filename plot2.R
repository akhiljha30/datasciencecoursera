z<-read.table("household_power_consumption.txt",sep=';',header=TRUE)
y<-subset(z, z$Date=="1/2/2007"|z$Date=="2/2/2007");
y$Global_active_power<-as.numeric(y$Global_active_power)/1000;
png("plot2.png")
y$DateTime<-strptime(paste(y$Date,y$Time),"%d/%m/%Y %H:%M:%S")
plot(y$DateTime,as.numeric(y$Global_active_power),type='l',ylab="Global active POwer(killowatts)")
dev.off()