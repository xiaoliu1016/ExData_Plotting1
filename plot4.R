###COURSE 4 week1 project
total.data<-read.csv('household_power_consumption.txt',header=T, sep=';', na.strings="?")
head(total.data)
total.data$Date <-as.Date(total.data$Date,"%d/%m/%Y")
total.data%<>%filter(Date >= "2007-02-01" & Date <="2007-02-02")

# Plot 4
png('plot4.png', width = 480, height = 480)
par(mfrow = c(2, 2))
plot(total.data$DateTime, total.data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
plot(total.data$DateTime, total.data$Voltage, xlab = 'datetime', ylab = 'Voltage', type = 'l')
plot(total.data$DateTime, total.data$Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type = 'l')
lines(total.data$DateTime, total.data$Sub_metering_2, col = 'red')
lines(total.data$DateTime, total.data$Sub_metering_3, col = 'blue')
legend('topright', col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = 1)
plot(total.data$DateTime, total.data$Global_reactive_power, xlab = 'datetime', ylab = 'Global_reactive_power', type = 'l')
dev.off()