Plot2 <- function(){
	electric <- read.table("householdPowerConsumption.txt", stringsAsFactors=FALSE, sep=";", header=TRUE, na.strings="?")
	electrics <- electric[electric$Date=="1/2/2007" | electric$Date=="2/2/2007",]
	dateTime <- strptime(paste(electrics$Date, electrics$Time, sep = " "),"%d/%m/%Y %H:%M:%S")
	electrics2 <- cbind(electrics, dateTime)
	with(electrics2, plot(dateTime, Global_active_power, type="l", xlab="", ylab="Global Active Power(kilowatts)"))
} 