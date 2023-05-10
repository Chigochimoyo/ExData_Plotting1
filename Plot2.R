
# Combine Date and Time column

date_time <- str_c(sdata$Date,sdata$Time, sep = " ")


# Convert date_time to date time format

date_time <- strptime(date_time, format = "%Y-%m-%d %H:%M:%S")

sdata <- cbind(date_time, sdata)



# Creates a png file on drive 

png(filename= "Plot2.png", width = 480, height = 480)


# The plot.

with(sdata,
     plot(date_time, Global_active_power, 
     type = "l", xlab = "", 
     ylab = "Global Active Power(Kilowatts)"))

# Closes the png graphing device 

dev.off()

     
     
     