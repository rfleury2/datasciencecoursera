plot1 <- function() {
      ## Read data file and format date
      consumption <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
      consumption$Date <- as.Date(consumption$Date, format = "%d/%m/%Y")
      
      ## Subset needed dates
      consumption <- consumption[consumption$Date == "2007-02-01" | consumption$Date == "2007-02-02", ]
      
      ## Create histogram png
      png(file = "plot1.png")
      hist(consumption$Global_active_power, main = "Global Active Power", col = "Red", xlab = "Global Active Power (kilowatts)")
      dev.off()
}
      