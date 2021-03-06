## plot2.R, creates the frequency with the Global Active Power

## First run the file ExData_Plotting1.R to download and do the pre-proccessing of the data,
## if not done yet.


plot2 <- function() {
        Sys.setlocale("LC_TIME", "English") # Change my local time from Spanish to English, to have (Thu, Fri and Sat)
        
        plot(df$timestamp,df$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
        dev.copy(png, file="plot2.png", width=480, height=480)
        dev.off()
}
plot2()