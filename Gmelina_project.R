#DETERMINING THE STATISTICAL DISTRIBUTIONS OF THE VARIOUS MATERIAL PROPERTIES
#SET THE WORKING DIRRECTORY BY CLICKING SESSION, SET WORK DIRECTORY, CHOOSE DIRECTORY

# Note:load the material properties one by one and call them their real names 

Tension<-read.csv("Tension.csv",header = TRUE, sep = ",")
Bending<-read.csv("Bending.csv",header = TRUE, sep = ",")
Density<-read.csv("Density.csv",header = TRUE, sep = ",")
ComParallel<-read.csv("Compression Parallel.csv",header = TRUE, sep = ",")
Shear<-read.csv("Shear.csv",header = TRUE,sep = ",")
ComPerpendicular<-read.csv("Compression Perpendicular.csv",header = TRUE, sep = ",")
MoEBending<-read.csv("MoE Bending.csv",header = TRUE, sep = ",")
MoETension<-read.csv("MoE Tension.csv",header = TRUE, sep = ",")
MoEComParallel<-read.csv("MoE Compression Parallel.csv",header = TRUE, sep = ",")
MoEComPerpendicular<-read.csv("MoE Compression Perpendicular.csv",header = TRUE,sep = ",")

# compute the Natural logarithms of the material properties and add log in front of their names to distinguish them

logTension<-log(Tension$Tension,base = 2.718)
logBending<-log(Bending$Bending, base = 2.718)
logDensity<-log(Density$Density, base = 2.718)
logComParallel<-log(ComParallel$CompressionParallel,base = 2.718)
logShear<-log(Shear$Shear,base = 2.718)
logComPerpendicular<-log(ComPerpendicular$CompressionPerpendicular, base = 2.718)
logMoETension<-log(MoETension$MoETension, base = 2.718)
logMoEComParallel<-log(MoEComParallel$MoECompressionParallel,base = 2.718)
logMoEComPerpendicular<-log(MoEComPerpendicular$MoECPer,base = 2.718)
logMoEBending<-log(MoEBending$MoEB,base = 2.718)

# Carry out the Shapiro-Wilk's test for normality on the material properties

shapiro.test(Tension$Tension)
shapiro.test(Bending$Bending)
shapiro.test(Density$Density)
shapiro.test(Shear$Shear)
shapiro.test(ComParallel$CompressionParallel)
shapiro.test(ComPerpendicular$CompressionPerpendicular)
shapiro.test(MoETension$MoETension)
shapiro.test(MoEComParallel$MoECompressionParallel)
shapiro.test(MoEBending$MoEB)
shapiro.test(MoEComPerpendicular$MoECPer)


# carry out shapiro-Wilk's test for normality on the log-transformed material properties

shapiro.test(logTension)
shapiro.test(logComParallel)
shapiro.test(logComPerpendicular)
shapiro.test(logShear)
shapiro.test(logBending)
shapiro.test(logDensity)
shapiro.test(logMoETension)
shapiro.test(logMoEComParallel)
shapiro.test(logMoEBending)
shapiro.test(logMoEComPerpendicular)

#Install and Load the goft package for testing for the weibull distribution
install.packages("goft")
library(goft)

#Test the Material Properties for weibull distribution using the goft package

weibull_test(Tension$Tension,method = "tranfr", N=1000)
weibull_test(ComParallel$CompressionParallel,method = "tranfr", N=1000)
weibull_test(ComPerpendicular$CompressionPerpendicular,method = "tranfr", N=1000)
weibull_test(Shear$Shear,method = "tranfr", N=1000)
weibull_test(Bending$Bending,method = "tranfr", N=1000)
weibull_test(Density$Density,method = "tranfr", N=1000)
weibull_test(MoEComParallel$MoECompressionParallel,method = "tranfr", N=1000)
weibull_test(MoEBending$MoEB,method = "tranfr", N=1000)
weibull_test(MoEComPerpendicular$MoECPer,method = "tranfr", N=1000)
weibull_test(MoETension$MoETension,method = "tranfr", N=1000)

#To fit the material properties to various distributions, first install and Load the fitdistrplus package
install.packages("fitdistrplus")
library(fitdistrplus)

# Fit the  material properties to the Normal Distribution using the Maximum likelihood method
#and add Norm2 in front of their names

Norm2Tension<-fitdist(Tension$Tension,"norm",method = "mle")
Norm2Bending<-fitdist(Bending$Bending,"norm",method = "mle")
Norm2Density<-fitdist(Density$Density,"norm",method = "mle")
Norm2ComParallel<-fitdist(ComParallel$CompressionParallel,"norm",method = "mle")
Norm2Shear<-fitdist(Shear$Shear,"norm",method = "mle")
Norm2ComPerpendicular<-fitdist(ComPerpendicular$CompressionPerpendicular,"norm",method = "mle")
Norm2MoEBending<-fitdist(MoEBending$MoEB,"norm",method = "mle")
Norm2MoETension<-fitdist(MoETension$MoETension,"norm",method = "mle")
Norm2MoEComParallel<-fitdist(MoEComParallel$MoECompressionParallel,"norm",method = "mle")
Norm2MoEComPerpendicular<-fitdist(MoEComPerpendicular$MoECPer,"norm",method = "mle")

#Take the Summary of fitting the material properties to the Normal Distribution

summary(Norm2Bending)
summary(Norm2ComParallel)
summary(Norm2Tension)
summary(Norm2ComPerpendicular)
summary(Norm2Density)
summary(Norm2MoEBending)
summary(Norm2MoEComParallel)
summary(Norm2MoEComPerpendicular)
summary(Norm2MoETension)
summary(Norm2Shear)

#Plot the graphs for fitting the material properties to the Normal Distribution
#NB: The graphs can be seen by running the codes one by one. Export each graph as you run the codes   

plot(Norm2Bending)
plot(Norm2ComParallel)
plot(Norm2ComPerpendicular)
plot(Norm2Density)
plot(Norm2MoEBending)
plot(Norm2MoEComParallel)
plot(Norm2MoEComPerpendicular)
plot(Norm2MoETension)
plot(Norm2Shear)
plot(Norm2Tension)    

# Fit the  material properties to the Lognormal Distribution using the Maximum likelihood method
#and add Lognorm2 in front of their names

Lognorm2Tension<-fitdist(Tension$Tension,"lnorm",method = "mle")
Lognorm2Bending<-fitdist(Bending$Bending,"lnorm",method = "mle")
Lognorm2Density<-fitdist(Density$Density,"lnorm",method = "mle")
Lognorm2ComParallel<-fitdist(ComParallel$CompressionParallel,"lnorm",method = "mle")
Lognorm2Shear<-fitdist(Shear$Shear,"lnorm",method = "mle")
Lognorm2ComPerpendicular<-fitdist(ComPerpendicular$CompressionPerpendicular,"lnorm",method = "mle")
Lognorm2MoEBending<-fitdist(MoEBending$MoEB,"lnorm",method = "mle")
Lognorm2MoETension<-fitdist(MoETension$MoETension,"lnorm",method = "mle")
Lognorm2MoEComParallel<-fitdist(MoEComParallel$MoECompressionParallel,"lnorm",method = "mle")
Lognorm2MoEComPerpendicular<-fitdist(MoEComPerpendicular$MoECPer,"lnorm",method = "mle")

#Summary of fitting the material properties to the Lognormal Distribution

summary(Lognorm2Bending)
summary(Lognorm2ComParallel)
summary(Lognorm2Tension)
summary(Lognorm2ComPerpendicular)
summary(Lognorm2Density)
summary(Lognorm2MoEBending)
summary(Lognorm2MoEComParallel)
summary(Lognorm2MoEComPerpendicular)
summary(Lognorm2MoETension)
summary(Lognorm2Shear)

#Plot the graphs for fitting the material properties to the Lognormal Distribution
#NB: The graphs can be seen by running the codes one by one. Export each graph as you run the codes   

plot(Lognorm2Bending)
plot(Lognorm2ComParallel)
plot(Lognorm2ComPerpendicular)
plot(Lognorm2Density)
plot(Lognorm2MoEBending)
plot(Lognorm2MoEComParallel)
plot(Lognorm2MoEComPerpendicular)
plot(Lognorm2MoETension)
plot(Lognorm2Shear)
plot(Lognorm2Tension)



# Fit the  material properties to the Weibull Dtsribution using the Maximum likelihood method
#and add Weibull2 in front of their names

Weibull2Tension<-fitdist(Tension$Tension,"weibull",method = "mle")
Weibull2Bending<-fitdist(Bending$Bending,"weibull",method = "mle")
Weibull2Density<-fitdist(Density$Density,"weibull",method = "mle")
Weibull2ComParallel<-fitdist(ComParallel$CompressionParallel,"weibull",method = "mle")
Weibull2Shear<-fitdist(Shear$Shear,"weibull",method = "mle")
Weibull2ComPerpendicular<-fitdist(ComPerpendicular$CompressionPerpendicular,"weibull",method = "mle")
Weibull2MoEBending<-fitdist(MoEBending$MoEB,"weibull",method = "mle")
Weibull2MoETension<-fitdist(MoETension$MoETension,"weibull",method = "mle")
Weibull2MoEComParallel<-fitdist(MoEComParallel$MoECompressionParallel,"weibull",method = "mle")
Weibull2MoEComPerpendicular<-fitdist(MoEComPerpendicular$MoECPer,"weibull",method = "mle")

#Summary of fitting the material properties to the Weibull Distribution

summary(Weibull2Bending)
summary(Weibull2ComParallel)
summary(Weibull2Tension)
summary(Weibull2ComPerpendicular)
summary(Weibull2Density)
summary(Weibull2MoEBending)
summary(Weibull2MoEComParallel)
summary(Weibull2MoEComPerpendicular)
summary(Weibull2MoETension)
summary(Weibull2Shear)



#Plot the graphs for fitting the material properties to the Weibull Distribution
#NB: The graphs can be seen by running the codes one by one. Export each graph as you run the codes   

plot(Weibull2Bending)
plot(Weibull2ComParallel)
plot(Weibull2ComPerpendicular)
plot(Weibull2Density)
plot(Weibull2MoEBending)
plot(Weibull2MoEComParallel)
plot(Weibull2MoEComPerpendicular)
plot(Weibull2MoETension)
plot(Weibull2Shear)
plot(Weibull2Tension)



# BOXPLOTS OF THE MATERIAL PROPERTIES

#To make box plots of the material properties,first load the ggplot 2 package

install.packages("ggplot2")
library(ggplot2)

#import the file and call it Box BoxPlotData

BoxPlotData<-read.csv("Box Plot Material.csv",header = TRUE,sep = ",")

#Set the material properties as categorical factors 

StrengthsBoxPlot<-as.factor("BoxPlotData$Strengths")
MoEBoxPlot<-as.factor("BoxPlotData$E-Modulus")
DensityBoxPlot<-as.factor("BoxPlotData$Density")

#Check that the material property has been accurately represented as factors

class(StrengthsBoxPlot)
class(MoEBoxPlot)
class(DensityBoxPlot)

# Load the ggplot2 package to Plot the box plots
install.packages("ggplot2")
library(ggplot2)

#Plot the box plots

#Strengths
ggplot(data = BoxPlotData,mapping = aes(x=Strengths,y=SValues))+geom_boxplot()+labs(x="Material Properties")+
  labs(y="Strengths (MPa)")


ggplot(data = BoxPlotData,mapping = aes(x=reorder(Strengths,SValues,median,na.rm=TRUE),y=SValues))+geom_boxplot()+labs(x="Material Properties")+
  labs(y="Strengths (MPa)")+theme_bw()



#E-Modulus
ggplot(data = BoxPlotData,mapping = aes(x=MoE,y=EValues))+geom_boxplot()+labs(x="Elastic Moduli Types")+
  labs(y="Elastic Moduli Values (MPa)")

#Density
ggplot(data = BoxPlotData,mapping = aes(x=Density,y=DenValues))+geom_boxplot()+labs(x="Density")+
  labs(y="Density Value (kg/m3)")+theme_bw()

#reoder the boxplots in ascending order
#Strengths
ggplot(data = BoxPlotData,mapping = aes(x=reorder(Strengths,SValues,median,na.rm=TRUE),y=SValues))+geom_boxplot()+labs(x="Material Properties")+
  labs(y="Strengths (MPa)")+theme_bw()

#E-Modulus
ggplot(data = BoxPlotData,mapping = aes(x=reorder(MoE,EValues,median,na.rm=TRUE), y=EValues))+geom_boxplot()+
  labs(x="Elastic Moduli")+
  labs(y="Elastic Moduli Values (MPa)")+theme_bw()

#Density
ggplot(data = BoxPlotData,mapping = aes(x=reorder(Density,DenValues,median,na.rm=TRUE),y=DenValues))+geom_boxplot()+labs(x="Density")+
  labs(y="Density Value (kg/m3)")+theme_bw()




