ConsumptionData <- read.csv("~/Desktop/household_power_consumption 2.txt", nrows=2880, skip=66637, sep=";", header=T)
header <- read.csv("~/Desktop/household_power_consumption 2.txt", nrows=1, header = FALSE, sep=";")

colnames(ConsumptionData) <- unlist(header)

plot(ConsumptionData$Global_active_power, type="line", xaxt = "n", xlab = "", ylab = "Global Active Power (kilowatts)")

at <- c(0,1440,2880)

axis(side = 1, at = at, labels = c("Thu", "Fri", "Sat"))

dev.copy(png, file = "plot2.png")

dev.off() 
