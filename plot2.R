real_date <- as.Date(working_data$Date, format = "%d/%m/%Y")
datetime <- paste(real_date,working_data$Time) #combine the date and time columns
datetime <- as.POSIXct(strptime(datetime, "%Y-%m-%d %H:%M:%S")) #convert to POSIXct format so I can run a time-series plot
plot(datetime,gap_num, type="l",ylab = "Global Active Power (kilowats)",xlab = "") 
dev.copy(png,'plot2.png')
dev.off()
           