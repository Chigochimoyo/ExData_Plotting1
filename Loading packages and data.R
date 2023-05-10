
library(tidyverse)
library(lubridate)

# Downloading and unzipping dataset 

url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

download.file(url, "zipped_data")

unzip("zipped_data")


# Checking file size 

list.files()

file.info("household_power_consumption.txt")$size


# Reading dataset into R

data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")


# Changes the Date Column class to date and filters the data by Date column

sdata <- data %>% 
  mutate(Date = dmy(Date))  %>% 
  filter(Date == dmy("01/02/2007") | Date == dmy("02/02/2007"))


# Checking if the data contains missing values coded as "?".

for (i in names(sdata)) {
  sum(grepl("\\?", sdata[[i]]))
}

# Changing Column classes to numeric

sdata[, 3:9] <- lapply(sdata[,3:9], as.numeric)









