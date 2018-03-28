electricalConsumptionPower <- read.table("ExData_Plotting1/household_power_consumption.txt",sep=";", header = TRUE)
electricalConsumptionPower$DateTime <- paste(as.character(electricalConsumptionPower$Date), " ", as.character(electricalConsumptionPower$Time))
electricalConsumptionPower$Date <-as.Date(electricalConsumptionPower$Date,"%d/%m/%Y")
electricalConsumptionPower$DateTime <- strptime(electricalConsumptionPower$DateTime,"%d/%m/%Y %H:%M:%S")
electricalConsumptionPowerSubset <-electricalConsumptionPower[(electricalConsumptionPower$Date>="2007-02-01"& electricalConsumptionPower$Date<="2007-02-02"), ]
electricalConsumptionPowerSubset$Global_active_power <-as.character(electricalConsumptionPowerSubset$Global_active_power)
electricalConsumptionPowerSubset$Global_active_power <-as.numeric(electricalConsumptionPowerSubset$Global_active_power)
png("plot2.png", width=480, height=480)
plot(electricalConsumptionPowerSubset$DateTime,electricalConsumptionPowerSubset$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()

