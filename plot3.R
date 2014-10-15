
data <- read.table("household_power_consumption 2.csv", header = T, sep = ";", colClasses = "character")

Data <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]

attach(Data)

png(file="plot3.png")

plot(Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "line", xaxt="n")

points(Sub_metering_2, type="line", col = "red")

points(Sub_metering_3, type = "line", col = "blue")

at <- c(0,1440,2880)

axis(side = 1, at = at, labels = c("Thu", "Fri", "Sat"))

legend('topright',names(c(Data[7],Data[8],Data[9])), col = c("black","red","blue"),lty = 1)

dev.off() 
