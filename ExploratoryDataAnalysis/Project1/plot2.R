plot2 <- function() {
      ## Read data file and format date
      consumption <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
      consumption$Date <- as.Date(consumption$Date, format = "%d/%m/%Y")
      
      ## Set up combined date and time
      consumption$DateTime <- paste(consumption$Date, consumption$Time)
      consumption$DateTime <- strptime(consumption$DateTime, format = "%Y-%m-%d %H:%M:%S")
      
      ## Subset needed dates
      consumption <- consumption[consumption$Date == "2007-02-01" | consumption$Date == "2007-02-02", ]
      
      ## Generate plot to png
      png(file = "plot2.png")
      with(consumption, plot(DateTime, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = ""))
      dev.off()
      
}