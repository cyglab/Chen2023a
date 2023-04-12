clear;
data(:,1)=csvread('sub.csv');
data(:,2)=csvread('bUnifPE.csv');
data(:,3)=csvread('bUnifPC.csv');
data(:,4)=csvread('bUnifDL.csv');
data(:,5)=csvread('bUnifDIs.csv');
data(:,6)=csvread('bConvPE.csv');
data(:,7)=csvread('bConvPC.csv');
data(:,8)=csvread('bConvDL.csv');
data(:,9)=csvread('bConvDIs.csv');
data(:,10)=csvread('bKalmPE.csv');
data(:,11)=csvread('bKalmPC.csv');
data(:,12)=csvread('bKalmDL.csv');
data(:,13)=csvread('bKalmDIs.csv');
data(:,14)=csvread('mP3.csv');

data0(1,:)=[1:14]

data=[data0;data];

csvwrite('lmmData.csv',data)




