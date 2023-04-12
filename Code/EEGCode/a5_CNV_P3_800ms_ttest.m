
load('./ERPdata/s400.mat');%0dlt
load('./ERPdata/s600.mat');%ldlt
load('./ERPdata/s800.mat');%sdlt
load('./ERPdata/l800.mat');%0dst
load('./ERPdata/l1000.mat');%ldst
load('./ERPdata/l1200.mat');%sdst
load('./ERPdata/times.mat');
load('./ERPdata/chan.mat');


b1erp = permute(s400,[2 1 3]);
b2erp = permute(s600,[2 1 3]);
b3erp = permute(s800,[2 1 3]);
b4erp = permute(l800,[2 1 3]);
b5erp = permute(l1000,[2 1 3]);
b6erp = permute(l1200,[2 1 3]);

base1=mean(b1erp(201:251,:,:),1);
base2=mean(b2erp(201:251,:,:),1);
base3=mean(b3erp(201:251,:,:),1);
base4=mean(b4erp(201:251,:,:),1);
base5=mean(b5erp(201:251,:,:),1);
base6=mean(b6erp(201:251,:,:),1);

x=times;
sizx=size(x);
for i=1:sizx(2);
    berp1(i,:,:)=b1erp(i,:,:)-base1;
    berp2(i,:,:)=b2erp(i,:,:)-base2;
    berp3(i,:,:)=b3erp(i,:,:)-base3;
    berp4(i,:,:)=b4erp(i,:,:)-base4;
    berp5(i,:,:)=b5erp(i,:,:)-base5;
    berp6(i,:,:)=b6erp(i,:,:)-base6;
end;


%[6 7 9 10 11 12 14 16 18]

erp3=mean(berp3(:,[5 4 36 9 53 40 14 13 44],:),2);
erp4=mean(berp4(:,[5 4 36 9 53 40 14 13 44],:),2);


indx1=find(times(1,:)>=230);
indx2=find(times(1,:)<=900);
indx=intersect(indx1,indx2);

% mean cnv amplitude
cnv_short=squeeze(mean(erp3(indx,:,:),1));
cnv_long=squeeze(mean(erp4(indx,:,:),1));

clear indx1 indx2 xindx;

indx1=find(times(1,:)>=100);
indx2=find(times(1,:)<=1300);
indx=intersect(indx1,indx2);

% mean p3 amplitude
P3_short=squeeze(mean(erp3(indx,:,:),1));
P3_long=squeeze(mean(erp4(indx,:,:),1));

clear indx1 indx2 xindx;
