# Exploratory Data Analysis - Assignment 2 - Q. #1
# Ron Mashrouteh May 23, 2014

# Loading provided datasets - loading from local machine
NEI <- readRDS("~/Exploratory_Data_Analysis/Assignment_2/summarySCC_PM25.rds")
SCC <- readRDS("~/Exploratory_Data_Analysis/Assignment_2/Source_Classification_Code.rds")

# Sampling
NEI_sampling <- NEI[sample(nrow(NEI), size=2000, replace=F), ]

# Aggregate
Emissions <- aggregate(NEI[, 'Emissions'], by=list(NEI$year), FUN=sum)
Emissions$PM <- round(Emissions[,2]/1000,2)

# Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
# Using the base plotting system, make a plot showing the total PM2.5 emission from all sources 
# for each of the years 1999, 2002, 2005, and 2008.




# Generate the graph in the same directory as the source code
png(filename='~/Exploratory_Data_Analysis/Assignment_2/plot1.png')

barplot(Emissions$PM, names.arg=Emissions$Group.1, 
        main=expression('Total Emission of PM'[2.5]),
        xlab='Year', ylab=expression(paste('PM', ''[2.5], ' in Kilotons')))

dev.off()


install.packages("devtools")
library(devtools)
x<-1:10
abc<-read.csv("msleep_ggplot2.csv")
class(abc)
library(kernlab)
install.packages(kernlab)
library(kernlab)
x<-c(4,TRUE)
class(x)
x<-40
class(x)
x<-c(1,3,5)
y<-c(3,2,10)
rbind(x,y)
x <- list(2, "a", "b", TRUE)
x[[2]]
x<-1:4
y<-2:3
x+y
13848034/