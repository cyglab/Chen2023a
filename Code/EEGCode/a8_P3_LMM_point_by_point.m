clear;

load('./ERPdata/s400.mat');%0dlt
load('./ERPdata/s600.mat');%ldlt
load('./ERPdata/s800.mat');%sdlt
load('./ERPdata/l800.mat');%0dst
load('./ERPdata/l1000.mat');%ldst
load('./ERPdata/l1200.mat');%sdst
load('./ERPdata/times.mat');

b1erp = permute(s400,[2 1 3]);
b2erp = permute(s600,[2 1 3]);
b3erp = permute(s800,[2 1 3]);
b4erp = permute(l800,[2 1 3]);
b5erp = permute(l1000,[2 1 3]);
b6erp = permute(l1200,[2 1 3]);

nerp1=b1erp(326:550,:,:);
nerp2=b2erp(376:600,:,:);
nerp3=b3erp(426:650,:,:);
nerp4=b4erp(426:650,:,:);
nerp5=b5erp(476:700,:,:);
nerp6=b6erp(526:750,:,:);

x=-100:4:796;
base1=mean(nerp1(1:25,:,:),1);
base2=mean(nerp2(1:25,:,:),1);
base3=mean(nerp3(1:25,:,:),1);
base4=mean(nerp4(1:25,:,:),1);
base5=mean(nerp5(1:25,:,:),1);
base6=mean(nerp6(1:25,:,:),1);

sizx=size(x);
for i=1:sizx(2);
    berp1(i,:,:)=nerp1(i,:,:)-base1;
    berp2(i,:,:)=nerp2(i,:,:)-base2;
    berp3(i,:,:)=nerp3(i,:,:)-base3;
    berp4(i,:,:)=nerp4(i,:,:)-base4;
    berp5(i,:,:)=nerp5(i,:,:)-base5;
    berp6(i,:,:)=nerp6(i,:,:)-base6;
end;


x1=x(26:225);
erp1=berp1(26:225,:,:);
erp2=berp2(26:225,:,:);
erp3=berp3(26:225,:,:);
erp4=berp4(26:225,:,:);
erp5=berp5(26:225,:,:);
erp6=berp6(26:225,:,:);

for i=1:18;
erp(:,:,6*(i-1)+1)=erp1(:,:,i);
erp(:,:,6*(i-1)+2)=erp2(:,:,i);
erp(:,:,6*(i-1)+3)=erp3(:,:,i);
erp(:,:,6*(i-1)+4)=erp4(:,:,i);
erp(:,:,6*(i-1)+5)=erp5(:,:,i);
erp(:,:,6*(i-1)+6)=erp6(:,:,i);
end;

lmmData=csvread('lmmData.csv',1,0);

n=0

% bUnifPE
n=n+1
for i=1:200;
    for j=1:62;
        temp=double(squeeze(erp(i,j,:)));
        tbl = table(lmmData(:,1),lmmData(:,2),temp,'VariableNames',{'sub','model','erp'});
        lme = fitlme(tbl,'erp~model+(1|sub)');
        lmeERP.b(i,j)=lme.Coefficients{2,2};
        lmeERP.se(i,j)=lme.Coefficients{2,3};
        lmeERP.t(i,j)=lme.Coefficients{2,4};
        lmeERP.df(i,j)=lme.Coefficients{2,5};
        lmeERP.p(i,j)=lme.Coefficients{2,6};
        lmeERP.AIC(i,j)=lme.ModelCriterion{1,1};
        lmeERP.BIC(i,j)=lme.ModelCriterion{1,2};
    end;
end;

savepath='./';
save(strcat(savepath,'lmeERPufPE.mat'),'lmeERP');
clear lmeERP;


% bUnifDkl
n=n+1
for i=1:200;
    for j=1:62;
        temp=double(squeeze(erp(i,j,:)));
        tbl = table(lmmData(:,1),lmmData(:,4),temp,'VariableNames',{'sub','model','erp'});
        lme = fitlme(tbl,'erp~model+(1|sub)');
        lmeERP.b(i,j)=lme.Coefficients{2,2};
        lmeERP.se(i,j)=lme.Coefficients{2,3};
        lmeERP.t(i,j)=lme.Coefficients{2,4};
        lmeERP.df(i,j)=lme.Coefficients{2,5};
        lmeERP.p(i,j)=lme.Coefficients{2,6};
        lmeERP.AIC(i,j)=lme.ModelCriterion{1,1};
        lmeERP.BIC(i,j)=lme.ModelCriterion{1,2};
    end;
end;

savepath='./';
save(strcat(savepath,'lmeERPufDkl.mat'),'lmeERP');
clear lmeERP;



% bUnifDIs
n=n+1
for i=1:200;
    for j=1:62;
        temp=double(squeeze(erp(i,j,:)));
        tbl = table(lmmData(:,1),lmmData(:,5),temp,'VariableNames',{'sub','model','erp'});
        lme = fitlme(tbl,'erp~model+(1|sub)');
        lmeERP.b(i,j)=lme.Coefficients{2,2};
        lmeERP.se(i,j)=lme.Coefficients{2,3};
        lmeERP.t(i,j)=lme.Coefficients{2,4};
        lmeERP.df(i,j)=lme.Coefficients{2,5};
        lmeERP.p(i,j)=lme.Coefficients{2,6};
        lmeERP.AIC(i,j)=lme.ModelCriterion{1,1};
        lmeERP.BIC(i,j)=lme.ModelCriterion{1,2};
    end;
end;

savepath='./';
save(strcat(savepath,'lmeERPufDIs.mat'),'lmeERP');
clear lmeERP;


% bConvPE
n=n+1
for i=1:200;
    for j=1:62;
        temp=double(squeeze(erp(i,j,:)));
        tbl = table(lmmData(:,1),lmmData(:,6),temp,'VariableNames',{'sub','model','erp'});
        lme = fitlme(tbl,'erp~model+(1|sub)');
        lmeERP.b(i,j)=lme.Coefficients{2,2};
        lmeERP.se(i,j)=lme.Coefficients{2,3};
        lmeERP.t(i,j)=lme.Coefficients{2,4};
        lmeERP.df(i,j)=lme.Coefficients{2,5};
        lmeERP.p(i,j)=lme.Coefficients{2,6};
        lmeERP.AIC(i,j)=lme.ModelCriterion{1,1};
        lmeERP.BIC(i,j)=lme.ModelCriterion{1,2};
    end;
end;

savepath='./';
save(strcat(savepath,'lmeERPcvPE.mat'),'lmeERP');
clear lmeERP;


% bConvPC
n=n+1
for i=1:200;
    for j=1:62;
        temp=double(squeeze(erp(i,j,:)));
        tbl = table(lmmData(:,1),lmmData(:,7),temp,'VariableNames',{'sub','model','erp'});
        lme = fitlme(tbl,'erp~model+(1|sub)');
        lmeERP.b(i,j)=lme.Coefficients{2,2};
        lmeERP.se(i,j)=lme.Coefficients{2,3};
        lmeERP.t(i,j)=lme.Coefficients{2,4};
        lmeERP.df(i,j)=lme.Coefficients{2,5};
        lmeERP.p(i,j)=lme.Coefficients{2,6};
        lmeERP.AIC(i,j)=lme.ModelCriterion{1,1};
        lmeERP.BIC(i,j)=lme.ModelCriterion{1,2};
    end;
end;

savepath='./';
save(strcat(savepath,'lmeERPcvPC.mat'),'lmeERP');
clear lmeERP;


% bConvDkl
n=n+1
for i=1:200;
    for j=1:62;
        temp=double(squeeze(erp(i,j,:)));
        tbl = table(lmmData(:,1),lmmData(:,8),temp,'VariableNames',{'sub','model','erp'});
        lme = fitlme(tbl,'erp~model+(1|sub)');
        lmeERP.b(i,j)=lme.Coefficients{2,2};
        lmeERP.se(i,j)=lme.Coefficients{2,3};
        lmeERP.t(i,j)=lme.Coefficients{2,4};
        lmeERP.df(i,j)=lme.Coefficients{2,5};
        lmeERP.p(i,j)=lme.Coefficients{2,6};
        lmeERP.AIC(i,j)=lme.ModelCriterion{1,1};
        lmeERP.BIC(i,j)=lme.ModelCriterion{1,2};
    end;
end;

savepath='./';
save(strcat(savepath,'lmeERPcvDkl.mat'),'lmeERP');
clear lmeERP;


% bConvDIs
n=n+1
for i=1:200;
    for j=1:62;
        temp=double(squeeze(erp(i,j,:)));
        tbl = table(lmmData(:,1),lmmData(:,9),temp,'VariableNames',{'sub','model','erp'});
        lme = fitlme(tbl,'erp~model+(1|sub)');
        lmeERP.b(i,j)=lme.Coefficients{2,2};
        lmeERP.se(i,j)=lme.Coefficients{2,3};
        lmeERP.t(i,j)=lme.Coefficients{2,4};
        lmeERP.df(i,j)=lme.Coefficients{2,5};
        lmeERP.p(i,j)=lme.Coefficients{2,6};
        lmeERP.AIC(i,j)=lme.ModelCriterion{1,1};
        lmeERP.BIC(i,j)=lme.ModelCriterion{1,2};
    end;
end;

savepath='./';
save(strcat(savepath,'lmeERPcvDIs.mat'),'lmeERP');
clear lmeERP;



% bKalmPE
n=n+1
for i=1:200;
    for j=1:62;
        temp=double(squeeze(erp(i,j,:)));
        tbl = table(lmmData(:,1),lmmData(:,10),temp,'VariableNames',{'sub','model','erp'});
        lme = fitlme(tbl,'erp~model+(1|sub)');
        lmeERP.b(i,j)=lme.Coefficients{2,2};
        lmeERP.se(i,j)=lme.Coefficients{2,3};
        lmeERP.t(i,j)=lme.Coefficients{2,4};
        lmeERP.df(i,j)=lme.Coefficients{2,5};
        lmeERP.p(i,j)=lme.Coefficients{2,6};
        lmeERP.AIC(i,j)=lme.ModelCriterion{1,1};
        lmeERP.BIC(i,j)=lme.ModelCriterion{1,2};
    end;
end;

savepath='./';
save(strcat(savepath,'lmeERPkmPE.mat'),'lmeERP');
clear lmeERP;



% bKalmPC
n=n+1
for i=1:200;
    for j=1:62;
        temp=double(squeeze(erp(i,j,:)));
        tbl = table(lmmData(:,1),lmmData(:,11),temp,'VariableNames',{'sub','model','erp'});
        lme = fitlme(tbl,'erp~model+(1|sub)');
        lmeERP.b(i,j)=lme.Coefficients{2,2};
        lmeERP.se(i,j)=lme.Coefficients{2,3};
        lmeERP.t(i,j)=lme.Coefficients{2,4};
        lmeERP.df(i,j)=lme.Coefficients{2,5};
        lmeERP.p(i,j)=lme.Coefficients{2,6};
        lmeERP.AIC(i,j)=lme.ModelCriterion{1,1};
        lmeERP.BIC(i,j)=lme.ModelCriterion{1,2};
    end;
end;

savepath='./';
save(strcat(savepath,'lmeERPkmPC.mat'),'lmeERP');
clear lmeERP;

% bKalmDkl
n=n+1
for i=1:200;
    for j=1:62;
        temp=double(squeeze(erp(i,j,:)));
        tbl = table(lmmData(:,1),lmmData(:,12),temp,'VariableNames',{'sub','model','erp'});
        lme = fitlme(tbl,'erp~model+(1|sub)');
        lmeERP.b(i,j)=lme.Coefficients{2,2};
        lmeERP.se(i,j)=lme.Coefficients{2,3};
        lmeERP.t(i,j)=lme.Coefficients{2,4};
        lmeERP.df(i,j)=lme.Coefficients{2,5};
        lmeERP.p(i,j)=lme.Coefficients{2,6};
        lmeERP.AIC(i,j)=lme.ModelCriterion{1,1};
        lmeERP.BIC(i,j)=lme.ModelCriterion{1,2};
    end;
end;

savepath='./';
save(strcat(savepath,'lmeERPkmDkl.mat'),'lmeERP');
clear lmeERP;



% bKalmDIs
n=n+1
for i=1:200;
    for j=1:62;
        temp=double(squeeze(erp(i,j,:)));
        tbl = table(lmmData(:,1),lmmData(:,13),temp,'VariableNames',{'sub','model','erp'});
        lme = fitlme(tbl,'erp~model+(1|sub)');
        lmeERP.b(i,j)=lme.Coefficients{2,2};
        lmeERP.se(i,j)=lme.Coefficients{2,3};
        lmeERP.t(i,j)=lme.Coefficients{2,4};
        lmeERP.df(i,j)=lme.Coefficients{2,5};
        lmeERP.p(i,j)=lme.Coefficients{2,6};
        lmeERP.AIC(i,j)=lme.ModelCriterion{1,1};
        lmeERP.BIC(i,j)=lme.ModelCriterion{1,2};
    end;
end;

savepath='./';
save(strcat(savepath,'lmeERPkmDIs.mat'),'lmeERP');
clear lmeERP;






