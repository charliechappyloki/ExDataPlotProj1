Plot3 <- function(){
	electric <- read.table("householdPowerConsumption.txt", stringsAsFactors=FALSE, sep=";", header=TRUE, na.strings="?")
	electrics <- electric[electric$Date=="1/2/2007" | electric$Date=="2/2/2007",]
	dateTime <- strptime(paste(electrics$Date, electrics$Time, sep = " "),"%d/%m/%Y %H:%M:%S")
	electrics2 <- cbind(electrics, dateTime)
	with(electrics2, plot(dateTime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering"))
	with(electrics2, lines(dateTime, Sub_metering_2, col="red"))
	with(electrics2, lines(dateTime, Sub_metering_3, col="blue"))
	legend("topright", lty=1, col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
}
	