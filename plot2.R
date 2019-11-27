


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



#########plot 2 code


with(plot1_df, plot( plot1_df$Time , Global_active_power, type= "l", col = c("blue"), xlab = ""   ))
dev.copy(png, file="plot2.png")
dev.off()






