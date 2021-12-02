


##Reading data

NEI<-readRDS("D:/Education/6.1/R/summarySCC_PM25.rds")
SCC<-readRDS("D:/Education/6.1/R/Source_Classification_Code.rds")


##Sums of emissions by year

sums<-aggregate(Emissions~year, NEI, sum)
format(sums$Emissions,scientific=FALSE)

##Make and save plot 1

png("plot1.png", width=480, height=480)
plot(sums, type = "l", xlab = "Year",  ylab = "Emissions of PM2.5 (tons)", main = "Total Emissions of PM2.5 from all U.S. Sources", xaxt = "n")
axis(1, at = c(1999,2002,2005,2008), labels = c(1999,2002,2005,2008));
dev.off()


##Total PM2.5 emissions in the USA from 1999 to 2008 had decreased
