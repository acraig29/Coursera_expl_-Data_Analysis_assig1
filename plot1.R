


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


#########plot 1 code

names(plot1_df)

hist(plot1_df$Global_active_power, col = c("red"), main="Global Active Power", 
     xlab="Global Active Power (kilowats)")

dev.copy(png, file="plot1.png")
dev.off()













