rm(list=ls())   

library(lme4)
library(lmerTest)  
data <- read.csv("Y:\\Working\\MyPaper\\BayesCentral\\DataAnalysis\\Data&Code\\Code\\rLMMCode\\lmmData.csv")
names(data) <-c("subject","UnifPE","UnifPC","UnifDL","UnifDIs","ConvPE","ConvPC","ConvDL","ConvDIs","KalmPE","KalmPC","KalmDL","KalmDIs","mP3")

mod1 <- lmer(mP3 ~  UnifPE + (1|subject) + (0 + UnifPE |subject), data=data, REML=F)
summary(mod1)

mod2 <- lmer(mP3 ~  UnifPE + (1|subject), data=data, REML=F)
summary(mod2)
anova(mod1,mod2)


mod1 <- lmer(mP3 ~  UnifDL + (1|subject) + (0 + UnifDL |subject), data=data, REML=F)
summary(mod1)

mod2 <- lmer(mP3 ~  UnifDL + (1|subject), data=data, REML=F)
summary(mod2)
anova(mod1,mod2)

mod1 <- lmer(mP3 ~  UnifDIs + (1|subject) + (0 + UnifDIs |subject), data=data, REML=F)
summary(mod1)

mod2 <- lmer(mP3 ~  UnifDIs + (1|subject), data=data, REML=F)
summary(mod2)
anova(mod1,mod2)

mod1 <- lmer(mP3 ~  ConvPE + (1|subject) + (0 + ConvPE |subject), data=data, REML=F)
summary(mod1)

mod2 <- lmer(mP3 ~  ConvPE + (1|subject), data=data, REML=F)
summary(mod2)
anova(mod1,mod2)

mod1 <- lmer(mP3 ~  ConvPC + (1|subject) + (0 + ConvPC |subject), data=data, REML=F)
summary(mod1)

mod2 <- lmer(mP3 ~  ConvPC + (1|subject), data=data, REML=F)
summary(mod2)
anova(mod1,mod2)

mod1 <- lmer(mP3 ~  ConvDL + (1|subject) + (0 + ConvDL |subject), data=data, REML=F)
summary(mod1)

mod2 <- lmer(mP3 ~  ConvDL + (1|subject), data=data, REML=F)
summary(mod2)
anova(mod1,mod2)

mod1 <- lmer(mP3 ~  ConvDIs + (1|subject) + (0 + ConvDIs |subject), data=data, REML=F)
summary(mod1)

mod2 <- lmer(mP3 ~  ConvDIs + (1|subject), data=data, REML=F)
summary(mod2)
anova(mod1,mod2)


mod1 <- lmer(mP3 ~ KalmPE + (1|subject) + (0 + KalmPE |subject), data=data, REML=F)
summary(mod1)

mod2 <- lmer(mP3 ~ KalmPE + (1|subject), data=data, REML=F)
summary(mod2)
anova(mod1,mod2)

mod1 <- lmer(mP3 ~ KalmPC + (1|subject) + (0 + KalmPC |subject), data=data, REML=F)
summary(mod1)

mod2 <- lmer(mP3 ~ KalmPC + (1|subject), data=data, REML=F)
summary(mod2)
anova(mod1,mod2)

mod1 <- lmer(mP3 ~ KalmDL + (1|subject) + (0 + KalmDL |subject), data=data, REML=F)
summary(mod1)

mod2 <- lmer(mP3 ~ KalmDL + (1|subject), data=data, REML=F)
summary(mod2)
anova(mod1,mod2)

mod1 <- lmer(mP3 ~ KalmDIs + (1|subject) + (0 + KalmDIs |subject), data=data, REML=F)
summary(mod1)

mod2 <- lmer(mP3 ~ KalmDIs + (1|subject), data=data, REML=F)
summary(mod2)
anova(mod1,mod2)


           