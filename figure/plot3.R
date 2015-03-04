library(datasets)
plot3 <- function() {
    data_set <- read.table("household_power_consumption.txt",sep = ";",header =TRUE)
    ansy_data <- subset(data_set,as.character(data_set$Date) %in% c("1/2/2007","2/2/2007"))
    ansy_data$Sub_metering_1 <- as.numeric(as.character(ansy_data[,"Sub_metering_1"]))
    ansy_data$Sub_metering_2 <- as.numeric(as.character(ansy_data[,"Sub_metering_2"]))
    par(cex.axis = 1 )
    with( ansy_data, {
       plot.ts(Sub_metering_1,col="black",xaxt="n",ylim=c(0,40),xlim=c(0,2880),ylab="Energy Sub Metering",xlab="")
       par(new = TRUE)
       plot.ts(Sub_metering_2,col="red",xaxt="n",ylim=c(0,40),xlim=c(0,2880),ylab="",xlab="")
       par(new = TRUE)
       plot.ts(Sub_metering_3,col="blue",xaxt="n",ylim=c(0,40),xlim=c(0,2880),ylab="",xlab="")
       axis(1,at= c(0,1440,2880),labels=c("Thu","Fri","Sat"))
       legend("topright", lty = 1, cex = 0.5, col = c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
       dev.copy(png,file = "plot3.png", heigh = 480,width = 480)
       dev.off()
    }
    )
}
