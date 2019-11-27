

setwd("C:/Users/lisbo/OneDrive/IT Courses/JohnHopkins DS/Module4/assignment1")
filedir <- "C:/Users/lisbo/OneDrive/IT Courses/JohnHopkins DS/Module4/assignment1"


plot1_data  <- read.table("household_power_consumption.txt", header = TRUE, sep = ";" , na.strings = '?' 
                          ,stringsAsFactors = FALSE) 

plot1_data$Date <-   trimws(plot1_data$Date)
plot1_data$Date <- as.Date(plot1_dataDate, "%d/%m/%Y")
plot1_data$Time <- strptime(paste(plot1_data$Date, plot1_data$Time), "%d/%m/%Y %H:%M:%S")


str(plot1_data$Time)


plot1_df <- plot1_data[plot1_data$Date == '1/2/2007' | plot1_data$Date == '2/2/2007'   ,]
unique(plot1_df$Date)


#########plot 4 code


par(mfrow=c(2,2))
par(mar=c(4,4,4,4))

plot(plot1_df$Time ,plot1_df$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)", col = "cyan")
plot(plot1_df$Time, plot1_df$Voltage, type = "l", xlab = "datetime", ylab = "Voltage", col = "orange")


plot(plot1_df$Time, plot1_df$Sub_metering_1, type = "l", xlab = "", ylab = "Energy Sub-metering")
points(plot1_df$Time, plot1_df$Sub_metering_2, type = "l", col = "green")
points(plot1_df$Time, plot1_df$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, col = c("black", "green", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(plot1_df$Time, plot1_df$Global_reactive_power,   type = "l",  xlab = "datetime",    ylab = "Global reactive power", col = "magenta")

dev.copy(png, file="plot4.png")
dev.off()

