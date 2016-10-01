setwd("C:/Users/Kate/Rstuff")
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url,"household_power_consumption.zip")
unzip(zipfile="household_power_consumption.zip",exdir="C:/Users/Kate/Rstuff")
household_power <- read.table("household_power_consumption.txt",header=T,sep=';') 
working_data <- subset(household_power, Date=="2/1/2007" | Date=="2/2/2007")
gap_num <- as.numeric(as.character(working_data$Global_active_power)) #convert factor to numeric for Global_active_power
hist(gap_num,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.copy(png,'plot1.png')
dev.off()


