## Plotting assignment - Coursera 
## Ashwin Kadle
## ------------------------------
##

## clear environment
rm(list=ls())

##
load_data <- function() {
## Read file from extracted file
hhpower <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
# convert date and time variables to Date/Time class
hhpower$Time <- strptime(paste(hhpower$Date, hhpower$Time), "%d/%m/%Y %H:%M:%S")
hhpower$Date <- as.Date(hhpower$Date, "%d/%m/%Y")
# Subset data for 2 days data
dates <- as.Date(c("01-02-2007", "02-02-2007"), "%d-%m-%Y")
sub_hhpower <- subset(hhpower, Date %in% dates)
return(sub_hhpower)

}