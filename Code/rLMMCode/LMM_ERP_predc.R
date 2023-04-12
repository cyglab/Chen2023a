rm(list=ls())   

library(lme4)
library(lmerTest)
library(effectsize)
library(rsq)
  
data <- read.csv("Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data&Code\\Code\\rLMMCode\\lmmData.csv")
names(data) <-c("subject","UnifPE","UnifPC","UnifDL","UnifDIs","ConvPE","ConvPC","ConvDL","ConvDIs","KalmPE","KalmPC","KalmDL","KalmDIs","mP3")

mod <- lmer(mP3 ~  UnifPE + (1|subject), data=data, REML=F)
summary(mod)
anova(mod)
effectsize(mod)
rsq(mod)

mod0 <- lmer(mP3 ~  (1|subject), data=data, REML=F)
summary(mod0)
anova(mod0)
effectsize(mod0)
rsq(mod0)

dataClass = predict(mod)

write.csv(dataClass,file = "Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data&Code\\Code\\rLMMCode\\UnifPEPrec.csv", row.names = T)

mod <- lmer(mP3 ~  UnifDL + (1|subject), data=data, REML=F)
summary(mod)
dataClass = predict(mod)
write.csv(dataClass,file = "Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data&Code\\Code\\rLMMCode\\UnifDLPrec.csv", row.names = T)

mod <- lmer(mP3 ~  UnifDIs + (1|subject), data=data, REML=F)
summary(mod)
dataClass = predict(mod)
write.csv(dataClass,file = "Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data&Code\\Code\\rLMMCode\\UnifDIsPrec.csv", row.names = T)

mod <- lmer(mP3 ~  ConvPE + (1|subject), data=data, REML=F)
summary(mod)
dataClass = predict(mod)
write.csv(dataClass,file = "Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data&Code\\Code\\rLMMCode\\ConvPEPrec.csv", row.names = T)

mod <- lmer(mP3 ~  ConvPC + (1|subject), data=data, REML=F)
summary(mod)
dataClass = predict(mod)
write.csv(dataClass,file = "Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data&Code\\Code\\rLMMCode\\ConvPCPrec.csv", row.names = T)

mod <- lmer(mP3 ~  ConvDL + (1|subject), data=data, REML=F)
summary(mod)
dataClass = predict(mod)
write.csv(dataClass,file = "Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data&Code\\Code\\rLMMCode\\ConvDLPrec.csv", row.names = T)

mod <- lmer(mP3 ~  ConvDIs + (1|subject), data=data, REML=F)
summary(mod)
dataClass = predict(mod)
write.csv(dataClass,file = "Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data&Code\\Code\\rLMMCode\\ConvDIsPrec.csv", row.names = T)

mod <- lmer(mP3 ~ KalmPE + (1|subject), data=data, REML=F)
summary(mod)
dataClass = predict(mod)
write.csv(dataClass,file = "Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data&Code\\Code\\rLMMCode\\KalmPEPrec.csv", row.names = T)

mod <- lmer(mP3 ~ KalmPC + (1|subject), data=data, REML=F)
summary(mod)
dataClass = predict(mod)
write.csv(dataClass,file = "Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data&Code\\Code\\rLMMCode\\KalmPCPrec.csv", row.names = T)

mod <- lmer(mP3 ~ KalmDL + (1|subject), data=data, REML=F)
summary(mod)
dataClass = predict(mod)
write.csv(dataClass,file = "Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data&Code\\Code\\rLMMCode\\KalmDLPrec.csv", row.names = T)

mod <- lmer(mP3 ~ KalmDIs + (1|subject), data=data, REML=F)
summary(mod)
dataClass = predict(mod)
write.csv(dataClass,file = "Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data&Code\\Code\\rLMMCode\\KalmDIsPrec.csv", row.names = T)


           