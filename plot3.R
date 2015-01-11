ConsumptionData <- read.csv("~/Desktop/household_power_consumption 2.txt", nrows=2880, skip=66637, sep=";", header=T)
header <- read.csv("~/Desktop/household_power_consumption 2.txt", nrows=1, header = FALSE, sep=";")

colnames(ConsumptionData) <- unlist(header)

png(file="plot3.png")

plot(ConsumptionData$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "line", xaxt="n")

points(ConsumptionData$Sub_metering_2, type="line", col = "red")

points(ConsumptionData$Sub_metering_3, type = "line", col = "blue")

at <- c(0,1440,2880)

axis(side = 1, at = at, labels = c("Thu", "Fri", "Sat"))

legend('topright',names(c(ConsumptionData[7],ConsumptionData[8],ConsumptionData[9])), col = c("black","red","blue"),lty = 1)

dev.off() 
