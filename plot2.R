File <- "C:/Users/Tasif/Documents/Data/household_power_consumption.txt"
data <- read.table(File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

date_time <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GAP <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(date_time, GAP, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
