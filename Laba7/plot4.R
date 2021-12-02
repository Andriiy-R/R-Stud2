


##Reading data

NEI<-readRDS("D:/Education/6.1/R/summarySCC_PM25.rds")
SCC<-readRDS("D:/Education/6.1/R/Source_Classification_Code.rds")


join1<- merge(NEI, SCC, by.x ='SCC', by.y='SCC' )
join2 <- subset(join1, grepl("(Comb)(.)+(Coal)", join1$Short.Name))
answer<- rename(aggregate(x=join2[,'Emissions'], by=list(join2[,'year']), FUN = sum), Year = Group.1,  Emissions.in.tonns=x)

##Make and save plot 4

png("plot4.png", width=480, height=480)
plot(answer, type='b', xlab='Year', main = 'Emissions from coal combustion-related sources in USA', ylab='Sum of emissions(tonns)')
dev.off()


##PM2.5 emissions from 1999 to 2008 had decreased