rm(list=ls())   

data <- read.csv("Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data&Code\\Code\\rLMMCode\\lmmData.csv")
#names(data) <-c("1subject","2UnifPE","3UnifPC","4UnifDL","5UnifDIs","6ConvPE","7ConvPC","8ConvDL","9ConvDIs","10KalmPE","11KalmPC","12KalmDL","13KalmDIs","14mP3")

library(correlation)
data0 <- simulate_simpson(n = 6, groups = 18)

# "2UnifPE","3UnifPC"

data0[,1]=data[,2]
data0[,2]=data[,3]

correlation(data0, multilevel = TRUE)        

# "2UnifPE","4UnifDL"

data0[,1]=data[,2]
data0[,2]=data[,4]

correlation(data0, multilevel = TRUE)   

# "2UnifPE","5UnifDIs"

data0[,1]=data[,2]
data0[,2]=data[,5]

correlation(data0, multilevel = TRUE)  

# "2UnifPE","14mP3"

data0[,1]=data[,2]
data0[,2]=data[,14]

correlation(data0, multilevel = TRUE)    

# "3UnifPC","4UnifDIs"

data0[,1]=data[,3]
data0[,2]=data[,4]
correlation(data0, multilevel = TRUE)  
  

#"3UnifPC","5UnifDIs"
data0[,1]=data[,3]
data0[,2]=data[,5]
correlation(data0, multilevel = TRUE)  

#"3UnifPC","14mP3"
data0[,1]=data[,3]
data0[,2]=data[,14]
correlation(data0, multilevel = TRUE)  


#"4UnifDL","5UnifDIs"
data0[,1]=data[,4]
data0[,2]=data[,5]
correlation(data0, multilevel = TRUE)  


#"4UnifDL","14mP3"
data0[,1]=data[,4]
data0[,2]=data[,14]
correlation(data0, multilevel = TRUE)  


#"5UnifDIs","14mP3"
data0[,1]=data[,5]
data0[,2]=data[,14]
correlation(data0, multilevel = TRUE)  


#"6ConvPE","7ConvPC"
data0[,1]=data[,6]
data0[,2]=data[,7]
correlation(data0, multilevel = TRUE)  



#"6ConvPE","8ConvDL"
data0[,1]=data[,6]
data0[,2]=data[,8]
correlation(data0, multilevel = TRUE)  

#"6ConvPE","9ConvDIs"
data0[,1]=data[,6]
data0[,2]=data[,9]
correlation(data0, multilevel = TRUE)  

#"6ConvPE","14mP3"
data0[,1]=data[,6]
data0[,2]=data[,14]
correlation(data0, multilevel = TRUE)  

#"7ConvPC","8ConvDL"
data0[,1]=data[,7]
data0[,2]=data[,8]
correlation(data0, multilevel = TRUE)  

#"7ConvPC","9ConvDIs"
data0[,1]=data[,7]
data0[,2]=data[,9]
correlation(data0, multilevel = TRUE)  

#"7ConvPC","14mP3"
data0[,1]=data[,7]
data0[,2]=data[,14]
correlation(data0, multilevel = TRUE)  



#"8ConvDL","9ConvDIs"
data0[,1]=data[,8]
data0[,2]=data[,9]
correlation(data0, multilevel = TRUE)  

#"8ConvDL","14mP3"
data0[,1]=data[,8]
data0[,2]=data[,14]
correlation(data0, multilevel = TRUE)  

#"9ConvDIs","14mP3"
data0[,1]=data[,9]
data0[,2]=data[,14]
correlation(data0, multilevel = TRUE)  

#"10KalmPE","11KalmPC"
data0[,1]=data[,10]
data0[,2]=data[,11]
correlation(data0, multilevel = TRUE)  


#"10KalmPE","12KalmDL"
data0[,1]=data[,10]
data0[,2]=data[,12]
correlation(data0, multilevel = TRUE)  

#"10KalmPE","13KalmDIs"
data0[,1]=data[,10]
data0[,2]=data[,13]
correlation(data0, multilevel = TRUE)  


#"10KalmPE","14mP3"
data0[,1]=data[,10]
data0[,2]=data[,14]
correlation(data0, multilevel = TRUE)  


#"11KalmPC","12KalmDL"
data0[,1]=data[,11]
data0[,2]=data[,12]
correlation(data0, multilevel = TRUE)  


#"11KalmPC","13KalmDIs"
data0[,1]=data[,11]
data0[,2]=data[,13]
correlation(data0, multilevel = TRUE)  


#"11KalmPC","14mP3"
data0[,1]=data[,11]
data0[,2]=data[,14]
correlation(data0, multilevel = TRUE)  


#"12KalmDL","13KalmDIs"
data0[,1]=data[,12]
data0[,2]=data[,13]
correlation(data0, multilevel = TRUE)  


#"12KalmDL","14mP3"
data0[,1]=data[,12]
data0[,2]=data[,14]
correlation(data0, multilevel = TRUE)  


#"13KalmDIs","14mP3"
data0[,1]=data[,13]
data0[,2]=data[,14]
correlation(data0, multilevel = TRUE)  

