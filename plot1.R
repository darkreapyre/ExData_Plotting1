cols <- c("Date", "Time", "Global_active_power", "Global_reactive_power",
          "Voltage", "Global_intensity", "Sub_metering_1",
          "Sub_metering_2", "Sub_metering_3")
df <- read.table("household_power_consumption.txt", sep = ";",
                 skip = 66637, nrows = 2881, col.names = cols)

## Coerce to workable format

df[, 1] <- as.character(df[, 1])
df[, 2] <- as.character(df[, 2])
df[, 3] <- as.numeric(df[, 3])
df[, 4] <- as.numeric(df[, 4])
df[, 5] <- as.numeric(df[, 5])
df[, 6] <- as.numeric(df[, 6])
df[, 7] <- as.numeric(df[, 7])
df[, 8] <- as.numeric(df[, 8])
df[, 9] <- as.numeric(df[, 9])

## Plot
hist(df$Global_active_power, main = "Global Active Power", col = "red", 
     xlab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot1.png", height = 480, width = 480)
dev.off()