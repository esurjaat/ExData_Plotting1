
data <- read.table("household_power_consumption 2.csv", header = T, sep = ";", colClasses = "character")

Data <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]

attach(Data)

png(file="plot4.png")

par(mfrow = c(2,2))

#Top-left Plot
plot(Global_active_power, type="line", xaxt = "n", xlab = "", ylab = "Global Active Power")

at <- c(0,1440,2880)

axis(side = 1, at = at, labels = c("Thu", "Fri", "Sat"))

#Top-right Plot
plot(Voltage, type="line", xaxt="n", xlab="datetime")

axis(side=1, at=at, labels=c("Thu", "Fri", "Sat"))

#Bottom-left Plot
plot(Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "line", xaxt="n")

points(Sub_metering_2, type="line", col = "red")

points(Sub_metering_3, type = "line", col = "blue")

axis(side = 1, at = at, labels = c("Thu", "Fri", "Sat"))

legend('topright',names(c(Data[7],Data[8],Data[9])), col = c("black","red","blue"),lty = 1, bty="n")

#Bottom-right Plot
plot(Global_reactive_power, type="line", xaxt="n", xlab="datetime")

axis(side=1, at=at, labels=c("Thu", "Fri", "Sat"))

#close png file
dev.off()
