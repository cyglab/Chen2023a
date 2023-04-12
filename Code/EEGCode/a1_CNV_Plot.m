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



% erp1=mean(berp1(:,:,[6 7 9 10 11 12 14 16 18]),3);
erp1=mean(berp1(:,:,[1:18]),3);
erp2=mean(berp2(:,:,[1:18]),3);
erp3=mean(berp3(:,:,[1:18]),3);
erp4=mean(berp4(:,:,[1:18]),3);
erp5=mean(berp5(:,:,[1:18]),3);
erp6=mean(berp6(:,:,[1:18]),3);

ferp1=mean(erp1(:,[5 4 36 9 53 40 14 13 44]),2);
ferp2=mean(erp2(:,[5 4 36 9 53 40 14 13 44]),2);
ferp3=mean(erp3(:,[5 4 36 9 53 40 14 13 44]),2);
ferp4=mean(erp4(:,[5 4 36 9 53 40 14 13 44]),2);
ferp5=mean(erp5(:,[5 4 36 9 53 40 14 13 44]),2);
ferp6=mean(erp6(:,[5 4 36 9 53 40 14 13 44]),2);



%C = linspecer(6);


subplot(3,2,1)
plot(x,ferp1, 'color',[198 201 106]./255,'LineWidth',2);
hold on;
plot(x,ferp2,'color',[138 172 73]./255,'LineWidth',2);
hold on;
plot(x,ferp3,'color',[72 143 49]./255,'LineWidth',2);
hold on;


set(gca, 'xlim', [-200, 1600]);
set(gca, 'ylim', [-7, 3]);
set(gca,'ydir','reverse')
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')


plot([-200, 2000],[0,0],'--k','LineWidth',1);
plot([0, 0],[-10,10],'--k','LineWidth',1);





subplot(3,2,2)
plot(x,ferp4, 'color',[222 66 91]./255,'LineWidth',2);
hold on;
plot(x,ferp5,'color',[242 125 88]./255,'LineWidth',2);
hold on;
plot(x,ferp6,'color',[251 179 106]./255,'LineWidth',2);
hold on;

set(gca, 'xlim', [-200, 1600]);
set(gca, 'ylim', [-7, 3]);
set(gca,'ydir','reverse')
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')


plot([-200, 2000],[0,0],'--k','LineWidth',1);
plot([0, 0],[-10,10],'--k','LineWidth',1);




