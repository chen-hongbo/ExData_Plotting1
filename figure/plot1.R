library(lubridate)
library(datasets)
plot1 <-function() {
    data_set <- read.table("household_power_consumption.txt",sep = ";",header =TRUE)
    ansy_data_set <- subset(data_set,dmy(data_set[,"Date"])  %within% interval(dmy("01/02/2007"),dmy("02/02/2007")))
    hist(as.numeric(as.character(ansy_data_set[,"Global_active_power"])),xlab= "Global_active_power(kilowatts)",col="red",main = "Global_active_power")
    dev.copy(png,file = "plot1.png",width=480,height=480)
    dev.off()
}
