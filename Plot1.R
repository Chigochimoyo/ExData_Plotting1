

# Creates a png file on drive 

png(filename = "Plot1.png",
    width = 480, height = 480)

# Plots the graph to the png file created 

hist(sdata$Global_active_power,
     col = "red",
     xlab = "Global Active Power(kilowatts)",
     main = "Global Active Power")

# Resets Graphing Device 

dev.off()

