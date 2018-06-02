z<-read.table("household_power_consumption.txt",sep=';',header=TRUE)
y<-subset(z, z$Date=="1/2/2007"|z$Date=="2/2/2007")
y$Global_active_power<-y$Global_active_power;
hist(as.numeric(y$Global_active_power),main="Global Active Power",ylab="Frequency",xlab="Global Active Power(killowatts)",col="red")
