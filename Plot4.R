
# Creates a png file for the plot

png(filename = "Plot4.png", width = 480, height = 480)


# The plot.

par(mfrow = c(2,2))


plot(sdata$date_time, sdata$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power")

plot(sdata$date_time, sdata$Voltage, type = "l",
     xlab = "datetime", ylab = "Votage")

plot(sdata$date_time, sdata$Sub_metering_1,  
     type = "l", xlab = "", ylab = "Energy sub meeting")
      lines(sdata$date_time, sdata$Sub_metering_2, col = "red")
      lines(sdata$date_time, sdata$Sub_metering_3, col = "blue")
      legend( x = "topright",
              legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
              lty = c(1,1,1),
              col = c("black", "red", "blue"),
              lwd = 2)

plot(sdata$date_time, sdata$Global_reactive_power, type = "l",
           xlab = "datetime", ylab = "Global reactive power")


# Closes the png graphing device

dev.off()

