rm(list=ls())   

library(lme4)
library(lmerTest)  
library(performance)

data <- read.csv("Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data&Code\\Code\\rLMMCode\\lmmData.csv")
names(data) <-c("subject","UnifPE","UnifPC","UnifDL","UnifDIs","ConvPE","ConvPC","ConvDL","ConvDIs","KalmPE","KalmPC","KalmDL","KalmDIs","mP3")

mod <- lmer(mP3 ~  UnifPE + UnifPC + UnifDL + UnifDIs + (1|subject), data=data, REML=F)
summary(mod)
dataClass = predict(mod)

check_collinearity(mod)


mod <- lmer(mP3 ~  UnifPE + UnifPC +  UnifDIs + (1|subject), data=data, REML=F)
summary(mod)
dataClass = predict(mod)

mod <- lmer(mP3 ~  UnifPE + UnifDIs + (1|subject), data=data, REML=F)
summary(mod)
dataClass = predict(mod)


mod <- lmer(mP3 ~  ConvPE + ConvPC + ConvDL + ConvDIs + (1|subject), data=data, REML=F)
summary(mod)
dataClass = predict(mod)

check_collinearity(mod)

mod <- lmer(mP3 ~  ConvPE + ConvPC +  ConvDIs + (1|subject), data=data, REML=F)
summary(mod)
dataClass = predict(mod)

mod <- lmer(mP3 ~  ConvPE +  ConvDIs + (1|subject), data=data, REML=F)
summary(mod)
dataClass = predict(mod)



mod <- lmer(mP3 ~ KalmPE + KalmPC + KalmDL + KalmDIs + (1|subject), data=data, REML=F)
summary(mod)
dataClass = predict(mod)

check_collinearity(mod)

mod <- lmer(mP3 ~ KalmPE + KalmPC +  KalmDIs + (1|subject), data=data, REML=F)
summary(mod)
dataClass = predict(mod)

mod <- lmer(mP3 ~ KalmPE + KalmDIs + (1|subject), data=data, REML=F)
summary(mod)
dataClass = predict(mod)
           