rm(list=ls())   

library(lme4)
library(lmerTest)  


data <- read.csv("Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data&Code\\Code\\rLMMCode\\lmmData.csv")
names(data) <-c("subject","UnifPE","UnifPC","UnifDL","UnifDIs","ConvPE","ConvPC","ConvDL","ConvDIs","KalmPE","KalmPC","KalmDL","KalmDIs","mP3")


mod1 <- lmer(mP3 ~  UnifDL + (1|subject), data=data, REML=F)
summary(mod1)

mod2 <- lmer(mP3 ~  UnifDIs + (1|subject), data=data, REML=F)
summary(mod2)
anova(mod1,mod2, test = "LRT")


mod1 <- lmer(mP3 ~  ConvDL + (1|subject), data=data, REML=F)
summary(mod1)

mod2 <- lmer(mP3 ~  ConvDIs + (1|subject), data=data, REML=F)
summary(mod2)
anova(mod1,mod2, test = "LRT")

mod1 <- lmer(mP3 ~ KalmDL + (1|subject), data=data, REML=F)
summary(mod1)

mod2 <- lmer(mP3 ~ KalmDIs + (1|subject), data=data, REML=F)
summary(mod2)
anova(mod1,mod2, test = "LRT")

           