library(datasets)
plot2 <- function() {
    data_set <- read.table("household_power_consumption.txt",sep = ";",header =TRUE)
    ansy_data <- subset(data_set,as.character(data_set$Date) %in% c("1/2/2007","2/2/2007"))
    plot.ts(ansy_data$Global_active_power,type="l",xaxt="n",xlab="",ylab="Global_active_power(kilowatts)")
    axis(1,at= c(0,1440,2880),labels=c("Thu","Fri","Sat"))
    dev.copy(png,file = "plot2.png",width=480,height=480)
    dev.off()
}