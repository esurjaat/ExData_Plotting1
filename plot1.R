ConsumptionData <- read.csv("~/Desktop/household_power_consumption 2.txt", nrows=2880, skip=66637, sep=";", header=T)
header <- read.csv("~/Desktop/household_power_consumption 2.txt", nrows=1, header = FALSE, sep=";")

colnames(ConsumptionData) <- unlist(header)

hist(ConsumptionData$Global_active_power, ylim=c(0,1200), main="Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")

dev.copy(png, file = "plot1.png")

dev.off() 
