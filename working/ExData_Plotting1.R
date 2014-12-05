## ExData_Plotting1, First assigment of this course.

## This assignment uses data from the UC Irvine Machine Learning Repository
## Dataset: Electric power consumption [20Mb]

## Loading the Data
if (!file.exists("exdata-data-household_power_consumption.zip")) {
        temp <- tempfile()
        download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", temp)
        filePower <- unzip(temp)
        unlink(temp)
}

## Pre-proccessing the Data
power <- read.table(filePower, header = TRUE, sep =";")

## Convert var to date type
power$Date <- as.Date(power$Date, format ="%d/%m/%Y")

## Sub-setting the whole data frame to our two days of February df
df <- power[(power$Date == "2007-02-01") | (power$Date == "2007-02-02"), ]

## Convert vars to numerics
df$Global_active_power <- as.numeric(as.character(df$Global_active_power))
df$Global_reactive_power <- as.numeric(as.character(df$Global_reactive_power))
df$Voltage <- as.numeric(as.character(df$Voltage))

## Add the timestamp to our df
df <- transform(df, timestamp=as.POSIXct(paste(Date, Time)), "%d-%m-%Y %H:%M:%S")

## Convert vars to numeric
df$Sub_metering_1 <- as.numeric(as.character(df$Sub_metering_1))
df$Sub_metering_2 <- as.numeric(as.character(df$Sub_metering_2))
df$Sub_metering_3 <- as.numeric(as.character(df$Sub_metering_3))
