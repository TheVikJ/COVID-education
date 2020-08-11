# Initiate all required libraries for the code.
library(dplyr)
library(readr)
library(ggplot2)
library(RCurl)
# Note: You have to have readr, RCurl, dplyr and ggplot2 packages
# installed for this code to work. I am using R version 3.6.2.

# Read the .csv file for COVID-19 data issued by the EU.
# This data will refresh every time this script is run.

# Note: This line of code was taken from the EU open data site.
data <- read_csv("https://covid19.who.int/WHO-COVID-19-global-data.csv")

# Create an export the plot as pdf
pdf("plot.pdf") 
data %>% 
  filter(Country == "United States of America" & Date_reported > as.numeric(data$Date_reported[32786])) %>%
  ggplot(aes(Date_reported, Cumulative_cases)) +
  geom_line() +
  geom_vline(xintercept=as.numeric(data$Date_reported[32820]), linetype=4, col = "red") +
  xlab("Date Reported") +
  ylab("Cases of COVID-19 in the United States of America") +
  ggtitle("Time Series Plot of Cases of COVID-19 in the USA with Date of School\nReopening for Reference") +
  geom_text(mapping=aes(x=data$Date_reported[32821], y=2550000, label="Aug 4 (Date of schools reopening in first states)"), size=4, angle=90, vjust=0, hjust=0, col="red", family = "mono")
dev.off()