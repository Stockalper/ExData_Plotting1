# Exploratory Data Analysis, Course Project 1
# 2015.12.13

# load data
df_data <- read.table("household_power_consumption.txt", 
                      header = TRUE, sep = ";" ,
                      na.strings = "?", nrows = 69518)

# subset data and format 
df_data<- df_data[df_data$Date %in% c("1/2/2007","2/2/2007") ,]
df_data$Date <- strptime(df_data$Date, '%d/%m/%Y')

# plot
png("plot1.png", width = 480, height = 480, bg = "transparent")

hist(df_data$Global_active_power, 
     col = "red", 
     xlab ="Global Active Power (kilowatts)", 
     main = "Global Active Power")


dev.off()
