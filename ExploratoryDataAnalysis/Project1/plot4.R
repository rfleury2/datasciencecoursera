plot4 <- function() {
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
      
}