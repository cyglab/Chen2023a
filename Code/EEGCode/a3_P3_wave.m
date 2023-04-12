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



erp1=mean(berp1(:,:,[1:18]),3);
erp2=mean(berp2(:,:,[1:18]),3);
erp3=mean(berp3(:,:,[1:18]),3);
erp4=mean(berp4(:,:,[1:18]),3);
erp5=mean(berp5(:,:,[1:18]),3);
erp6=mean(berp6(:,:,[1:18]),3);


ferp1=mean(erp1(:,[4 5 36 9 53 40 14 13 44]),2);
ferp2=mean(erp2(:,[4 5 36 9 53 40 14 13 44]),2);
ferp3=mean(erp3(:,[4 5 36 9 53 40 14 13 44]),2);
ferp4=mean(erp4(:,[4 5 36 9 53 40 14 13 44]),2);
ferp5=mean(erp5(:,[4 5 36 9 53 40 14 13 44]),2);
ferp6=mean(erp6(:,[4 5 36 9 53 40 14 13 44]),2);

%lineStyles = linspecer(6);  %makes N colors for you to use: lineStyles(ii,:)

%C = linspecer(6);


subplot(3,2,5);
plot(x,ferp1, 'color',[198 201 106]./255,'LineWidth',2);
hold on;
plot(x,ferp2,'color',[138 172 73]./255,'LineWidth',2);
hold on;
plot(x,ferp3,'color',[72 143 49]./255,'LineWidth',2);
hold on;
fill ([200 200 500 500],[-1 2 2 -1],'k','facealpha',0.1);


set(gca, 'xlim', [-100, 800]);
set(gca, 'ylim', [-2, 2.5]);
set(gca,'ydir','reverse')
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')


plot([-200, 2000],[0,0],'--k','LineWidth',1);
plot([0, 0],[-10,10],'--k','LineWidth',1);


subplot(3,2,6);
plot(x,ferp4, 'color',[222 66 91]./255,'LineWidth',2);
hold on;
plot(x,ferp5,'color',[242 125 88]./255, 'LineWidth',2);
hold on;
plot(x,ferp6,'color',[251 179 106]./255,'LineWidth',2);
hold on;
fill ([200 200 500 500],[-1 2 2 -1],'k','facealpha',0.1);


set(gca, 'xlim', [-100, 800]);
set(gca, 'ylim', [-2, 2.5]);
set(gca,'ydir','reverse')
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')


plot([-200, 2000],[0,0],'--k','LineWidth',1);
plot([0, 0],[-10,10],'--k','LineWidth',1);

