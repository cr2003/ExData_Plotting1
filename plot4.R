## plot4.R, creates 4 plots

## First run the file ExData_Plotting1.R to download and do the pre-proccessing of the data,
## if not done yet.

plot4 <- function() {
        par(mfrow=c(2,2))
        
        ##PLOT 1
        plot(df$timestamp,df$Global_active_power, type="l", xlab="", ylab="Global Active Power")
        
        ##PLOT 2
        plot(df$timestamp,df$Voltage, type="l", xlab="datetime", ylab="Voltage")
        
        ##PLOT 3
        plot(df$timestamp,df$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
        lines(df$timestamp,df$Sub_metering_2,col="red")
        lines(df$timestamp,df$Sub_metering_3,col="blue")
        
        ## parameter bty="n" delete the box
        legend("topright", col=c("black","red","blue"), c("Sub_metering_1     ","Sub_metering_2     ", 
                "Sub_metering_3     "),lty=c(1,1), bty="n") 
        
        #PLOT 4
        plot(df$timestamp,df$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
        
        ## Copy to png file
        dev.copy(png, file = "plot4.png", width=480, height=480)
        dev.off()
        
}

plot4()