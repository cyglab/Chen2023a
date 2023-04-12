clear;

path(path,'./a_unif');
path(path,'./b_Kalman');
path(path,'./c_conv/Wm0.22');

load('BayesUnif.mat');
E=mean(bootBayes.E,1);
AIC(1,:)=2*(2+E);

clear E;
clear bootBayes;

load('BayesConv.mat');
E=mean(bootBayes.E,1);
AIC(2,:)=2*(2+E);

load('BayesKalman.mat');
E=Bayes.E;
AIC(3,:)=2*(3+E);



clear E;
clear bootBayes;


tAIC=AIC';


% friedman test

[p0,tbl0,stats0] = friedman(tAIC)

% pot hoc

[p1,h1,stats1] = signrank(tAIC(:,2),tAIC(:,1))
[p2,h2,stats2] = signrank(tAIC(:,1),tAIC(:,3))
[p3,h3,stats3] = signrank(tAIC(:,2),tAIC(:,3))

% group level mean 95% ci
mAIC=mean(tAIC,1);

[H4,P4,CI4,STATS4] = ttest(tAIC(:,1)) 
[H5,P5,CI5,STATS5] = ttest(tAIC(:,2)) 
[H6,P6,CI6,STATS6] = ttest(tAIC(:,3)) 