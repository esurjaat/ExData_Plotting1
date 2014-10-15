
data <- read.table("household_power_consumption 2.csv", header = T, sep = ";", colClasses = "character")

Data <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]

attach(Data)

x <- as.numeric(Global_active_power)

hist(x, ylim=c(0,1200), main="Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")

dev.copy(png, file = "plot1.png")

dev.off() 
