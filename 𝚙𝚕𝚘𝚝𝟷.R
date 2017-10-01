###COURSE 4 week1 project
total.data<-read.csv('household_power_consumption.txt',header=T, sep=';', na.strings="?")
head(total.data)
total.data$Date <-as.Date(total.data$Date,"%d/%m/%Y")
total.data%<>%filter(Date >= "2007-02-01" & Date <="2007-02-02")

##Plot 1
png('plot1.png',width = 480, height = 480)
hist(total.data$Global_active_power, col="Red", main="Global Active Power", xlab="Global Active power (kilowatts)")
dev.off()