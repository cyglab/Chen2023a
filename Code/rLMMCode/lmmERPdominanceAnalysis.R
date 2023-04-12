rm(list=ls())   

library(lme4)
library(dominanceanalysis)
 
data <- read.csv("Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data&Code\\Code\\rLMMCode\\lmmData.csv")
names(data) <-c("subject","UnifPE","UnifPC","UnifDL","UnifDIs","ConvPE","ConvPC","ConvDL","ConvDIs","KalmPE","KalmPC","KalmDL","KalmDIs","mP3")

mod0 <- lmer(mP3 ~ (1|subject), data=data)
summary(mod0)

mod1 <- lmer(mP3 ~  ConvPE   +   ConvDIs + (1|subject), data=data, REML=F)
summary(mod1)

dalmm<-dominanceAnalysis(mod1, null.model=mod0)
print(dalmm)
summary(dalmm)


mod2 <- lmer(mP3 ~  KalmPE +  KalmDIs + (1|subject), data=data, REML=F)
summary(mod2)

dalmm<-dominanceAnalysis(mod2, null.model=mod0)
print(dalmm)
summary(dalmm)


