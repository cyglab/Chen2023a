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


indx1 = find(x>=200);
indx2 = find(x<=500);
indx = intersect(indx1,indx2);

ferp1=mean(mean(berp1(indx,[4 5 36 9 53 40 14 13 44],:),2),1);
ferp2=mean(mean(berp2(indx,[4 5 36 9 53 40 14 13 44],:),2),1);
ferp3=mean(mean(berp3(indx,[4 5 36 9 53 40 14 13 44],:),2),1);
ferp4=mean(mean(berp4(indx,[4 5 36 9 53 40 14 13 44],:),2),1);
ferp5=mean(mean(berp5(indx,[4 5 36 9 53 40 14 13 44],:),2),1);
ferp6=mean(mean(berp6(indx,[4 5 36 9 53 40 14 13 44],:),2),1);

mP3(:,1)=squeeze(ferp1);
mP3(:,2)=squeeze(ferp2);
mP3(:,3)=squeeze(ferp3);
mP3(:,4)=squeeze(ferp4);
mP3(:,5)=squeeze(ferp5);
mP3(:,6)=squeeze(ferp6);
tP3=mP3';
P3=tP3(:);

csvwrite('mP3.csv',P3);


