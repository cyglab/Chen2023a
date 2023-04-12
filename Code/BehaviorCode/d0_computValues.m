clear;

load('./a_unif/BayesUnif.mat');

% individual level
Unifm=squeeze(mean(bootBayes.para,2))';
Unifse=squeeze(std(bootBayes.para,0,2))';
UnifCI1=Unifm-Unifse*1.96;
UnifCI2=Unifm+Unifse*1.96;

% group level
mUnif=mean(Unifm,1);
[H,P,CIunif1,STATS] = ttest(Unifm(:,1));
[H,P,CIunif2,STATS] = ttest(Unifm(:,2));

clear bootBayes;

load('./c_conv/BayesConv.mat');

Convm=squeeze(mean(bootBayes.para,2))';
Convse=squeeze(std(bootBayes.para,0,2))';
ConvCI1=Convm-Convse*1.96;
ConvCI2=Convm+Convse*1.96;

mConv=mean(Convm,1);
[H,P,CIconv1,STATS] = ttest(Convm(:,1));
[H,P,CIconv2,STATS] = ttest(Convm(:,2));

clear bootBayes;


load('./b_Kalman/BayesKalman.mat');

KalmanPara=Bayes.para';

mKalm=mean(KalmanPara,1);
[H,P,CIkalm1,STATS] = ttest(KalmanPara(:,1));
[H,P,CIkalm2,STATS] = ttest(KalmanPara(:,2));
[H,P,CIkalm3,STATS] = ttest(KalmanPara(:,3));



