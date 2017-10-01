###COURSE 4 week1 project
total.data<-read.csv('household_power_consumption.txt',header=T, sep=';', na.strings="?")
head(total.data)
total.data$Date <-as.Date(total.data$Date,"%d/%m/%Y")
total.data%<>%filter(Date >= "2007-02-01" & Date <="2007-02-02")

##Plot 2
total.data$DateTime <- as.POSIXct(paste(total.data$Date, total.data$Time))
png('plot2.png', width = 480, height = 480)
plot(total.data$DateTime, total.data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
dev.off()