#convert to numeric
sub_met_1 <- as.numeric(as.character(working_data$Sub_metering_1))
sub_met_2 <- as.numeric(as.character(working_data$Sub_metering_2))
sub_met_3 <- as.numeric(as.character(working_data$Sub_metering_3))
plot(datetime,sub_met_1,type="l",xlab="",ylab="Energy sub metering")
par(new=T)
plot(datetime,sub_met_2,type="l",col="red",axes=F,ylim=c(0,40),xlab="",ylab="")
par(new=T)
plot(datetime,sub_met_3,type="l",col="blue",axes=F,ylim=c(0,40),xlab="",ylab="")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty="solid",lwd=2,col=c("black","red","blue"))
dev.copy(png,'plot3.png')
dev.off()

