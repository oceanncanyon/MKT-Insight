
# Quick EDA
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
myData <- drop_na(read_csv('Clean_Data_With_Segment_Label.csv')[,-c(1,2)])

seg1 <- myData[myData$segment==1,]
seg2 <- myData[myData$segment==2,]
seg3 <- myData[myData$segment==3,]
seg4 <- myData[myData$segment==4,]
seg5 <- myData[myData$segment==5,]
seg6 <- myData[myData$segment==6,]
seg7 <- myData[myData$segment==7,]

library(DataExplorer)

pdf("Report/EDA total.pdf") 
plot_histogram(myData,theme_config=theme(axis.text.x = element_text(face="bold", color="#980333",angle = 90, hjust = 1),axis.text.y = element_text(face="bold", color="#336699")))
plot_density(myData,theme_config=theme(axis.text.x = element_text(face="bold", color="#980333",angle = 90, hjust = 1),axis.text.y = element_text(face="bold", color="#336699")))
plot_scatterplot(myData, by = "spend_per_txn",theme_config=theme(axis.text.x = element_text(face="bold", color="#980333",angle = 90, hjust = 1),axis.text.y = element_text(face="bold", color="#336699"))) 
dev.off()

pdf("Report/EDA Seg1.pdf") 
plot_histogram(seg1,theme_config=theme(axis.text.x = element_text(face="bold", color="#980333",angle = 90, hjust = 1),axis.text.y = element_text(face="bold", color="#336699")))
plot_density(seg1,theme_config=theme(axis.text.x = element_text(face="bold", color="#980333",angle = 90, hjust = 1),axis.text.y = element_text(face="bold", color="#336699")))
plot_scatterplot(seg1, by = "spend_per_txn",theme_config=theme(axis.text.x = element_text(face="bold", color="#980333",angle = 90, hjust = 1),axis.text.y = element_text(face="bold", color="#336699"))) 
dev.off()

pdf("Report/EDA seg2.pdf") 
plot_histogram(seg2,theme_config=theme(axis.text.x = element_text(face="bold", color="#980333",angle = 90, hjust = 1),axis.text.y = element_text(face="bold", color="#336699")))
plot_density(seg2,theme_config=theme(axis.text.x = element_text(face="bold", color="#980333",angle = 90, hjust = 1),axis.text.y = element_text(face="bold", color="#336699")))
plot_scatterplot(seg2, by = "spend_per_txn",theme_config=theme(axis.text.x = element_text(face="bold", color="#980333",angle = 90, hjust = 1),axis.text.y = element_text(face="bold", color="#336699"))) 
dev.off()

pdf("Report/EDA seg3.pdf") 
plot_histogram(seg3,theme_config=theme(axis.text.x = element_text(face="bold", color="#980333",angle = 90, hjust = 1),axis.text.y = element_text(face="bold", color="#336699")))
plot_density(seg3,theme_config=theme(axis.text.x = element_text(face="bold", color="#980333",angle = 90, hjust = 1),axis.text.y = element_text(face="bold", color="#336699")))
plot_scatterplot(seg3, by = "spend_per_txn",theme_config=theme(axis.text.x = element_text(face="bold", color="#980333",angle = 90, hjust = 1),axis.text.y = element_text(face="bold", color="#336699"))) 
dev.off()

pdf("Report/EDA seg4.pdf") 
plot_histogram(seg4,theme_config=theme(axis.text.x = element_text(face="bold", color="#980333",angle = 90, hjust = 1),axis.text.y = element_text(face="bold", color="#336699")))
plot_density(seg4,theme_config=theme(axis.text.x = element_text(face="bold", color="#980333",angle = 90, hjust = 1),axis.text.y = element_text(face="bold", color="#336699")))
plot_scatterplot(seg4, by = "spend_per_txn",theme_config=theme(axis.text.x = element_text(face="bold", color="#980333",angle = 90, hjust = 1),axis.text.y = element_text(face="bold", color="#336699"))) 
dev.off()

pdf("Report/EDA seg5.pdf") 
plot_histogram(seg5,theme_config=theme(axis.text.x = element_text(face="bold", color="#980333",angle = 90, hjust = 1),axis.text.y = element_text(face="bold", color="#336699")))
plot_density(seg5,theme_config=theme(axis.text.x = element_text(face="bold", color="#980333",angle = 90, hjust = 1),axis.text.y = element_text(face="bold", color="#336699")))
plot_scatterplot(seg5, by = "spend_per_txn",theme_config=theme(axis.text.x = element_text(face="bold", color="#980333",angle = 90, hjust = 1),axis.text.y = element_text(face="bold", color="#336699"))) 
dev.off()

pdf("Report/EDA seg6.pdf") 
plot_histogram(seg6,theme_config=theme(axis.text.x = element_text(face="bold", color="#980333",angle = 90, hjust = 1),axis.text.y = element_text(face="bold", color="#336699")))
plot_density(seg6,theme_config=theme(axis.text.x = element_text(face="bold", color="#980333",angle = 90, hjust = 1),axis.text.y = element_text(face="bold", color="#336699")))
plot_scatterplot(seg6, by = "spend_per_txn",theme_config=theme(axis.text.x = element_text(face="bold", color="#980333",angle = 90, hjust = 1),axis.text.y = element_text(face="bold", color="#336699"))) 
dev.off()

pdf("Report/EDA seg7.pdf") 
plot_histogram(seg7,theme_config=theme(axis.text.x = element_text(face="bold", color="#980333",angle = 90, hjust = 1),axis.text.y = element_text(face="bold", color="#336699")))
plot_density(seg7,theme_config=theme(axis.text.x = element_text(face="bold", color="#980333",angle = 90, hjust = 1),axis.text.y = element_text(face="bold", color="#336699")))
plot_scatterplot(seg7, by = "spend_per_txn",theme_config=theme(axis.text.x = element_text(face="bold", color="#980333",angle = 90, hjust = 1),axis.text.y = element_text(face="bold", color="#336699"))) 
dev.off()

##########
#create_report(myData) #comment this if you're not rendering this entire rmarkdown

