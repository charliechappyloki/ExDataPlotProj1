Plot1 <- function(){
	electric <- read.table("householdPowerConsumption.txt", stringsAsFactors=FALSE, sep=";", header=TRUE, na.strings="?")
	electrics <- electric[electric$Date=="1/2/2007" | electric$Date=="2/2/2007",]
	hist(electrics$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power(kilowatts)")
}