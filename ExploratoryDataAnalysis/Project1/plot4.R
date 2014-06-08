plot4 <- function() {
      ## Read data file and format date
      consumption <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
      consumption$Date <- as.Date(consumption$Date, format = "%d/%m/%Y")
      
      ## Set up combined date and time
      consumption$DateTime <- paste(consumption$Date, consumption$Time)
      consumption$DateTime <- strptime(consumption$DateTime, format = "%Y-%m-%d %H:%M:%S")
      
      ## Subset needed dates
      consumption <- consumption[consumption$Date == "2007-02-01" | consumption$Date == "2007-02-02", ]
      
      png(file = "plot4.png")
      
      ## Sets up 2x2 grid for graphs
      par(mfrow = c(2,2))
      
      ## Top left graph
      with(consumption, plot(DateTime, Global_active_power, type = "l", ylab = "Global Active Power", xlab = ""))
      
      ## Top right graph
      with(consumption, plot(DateTime, Voltage, type = "l", xlab = "datetime"))
      
      ## Bottom left graph
      with(consumption, plot(DateTime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering"))
      with(consumption, points(DateTime, Sub_metering_2, type = "l", col = "Red"))
      with(consumption, points(DateTime, Sub_metering_3, type = "l", col = "Blue"))
      legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), pch = "—", col = c("Black", "Red", "Blue"))
      
      ## Bottom right graph
      with(consumption, plot(DateTime, Global_reactive_power, type = "l", xlab = "datetime"))
      
      dev.off()
}