# Exploratory Data Analysis, Course Project 1
# 2015.12.13

# change Locale to English
Sys.setlocale("LC_ALL", "English")

# load data
df_data <- read.table("household_power_consumption.txt", 
                      header = TRUE, sep = ";" ,
                      na.strings = "?", nrows = 69518)

# subset data and format 
df_data<- df_data[df_data$Date %in% c("1/2/2007","2/2/2007") ,]
date_with_time <- strptime(paste(df_data$Date, df_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

# plot
png("plot2.png", width = 480, height = 480, bg = "transparent")

plot(date_with_time, df_data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()
