## plot1.R, creates the histogram with the Global Active Power

## First run the file ExData_Plotting1.R to download and do the pre-proccessing of the data,
## if not done yet.

plot1 <- function() {
        hist(df$Global_active_power, main = paste("Global Active Power"), col="red", xlab="Global Active Power (kilowatts)")
        dev.copy(png, file="plot1.png", width=480, height=480)
        dev.off()
}
plot1()
