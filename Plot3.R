

png(filename = "Plot3.png", width = 480, height = 480)

plot(sdata$date_time, sdata$Sub_metering_1,  
    type = "l", xlab = "", ylab = "Energy sub meeting")
    lines(sdata$date_time, sdata$Sub_metering_2, col = "red")
    lines(sdata$date_time, sdata$Sub_metering_3, col = "blue")
    legend( x = "topright",
                  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
                  lty = c(1,1,1),
                  col = c("black", "red", "blue"),
                  lwd = 2)

    
dev.off()