
data <- read.table("household_power_consumption 2.csv", header = T, sep = ";", colClasses = "character")

Data <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]

attach(Data)

plot(Global_active_power, type="line", xaxt = "n", xlab = "", ylab = "Global Active Power (kilowatts)")

at <- c(0,1440,2880)

axis(side = 1, at = at, labels = c("Thu", "Fri", "Sat"))

dev.copy(png, file = "plot2.png")

dev.off() 
