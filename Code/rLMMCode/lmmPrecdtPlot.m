function predPlot( )
clear;

data0 =csvread('lmmData.csv',1,0);

for isub=1:18;
    indx = find(data0(:,1)==isub);
    
    P3(:,isub)=data0(indx,14);
end;

mP3=mean(P3,2);
ciP3=std(P3,0,2)/sqrt(18);

subplot(3,4,1);
data1 =csvread('UnifPEPrec.csv',1,1);

for isub=1:18;
    indx = find(data0(:,1)==isub);
    BelifUp(:,isub)=data1(indx,1);
end;

m=mean(BelifUp,2);
ci=std(BelifUp,0,2)/sqrt(18);

x=[0.4 0.6 0.8 0.8 1 1.2];

errorbar(x(1:3),mP3(1:3),ciP3(1:3),'o','linewidth',1,'Color','k', 'MarkerSize',5,...
    'MarkerEdgeColor','k','MarkerFaceColor','k');
hold on;
errorbar(x(4:6),mP3(4:6),ciP3(4:6),'^','linewidth',1,'Color','k', 'MarkerSize',5,...
    'MarkerEdgeColor','k','MarkerFaceColor','w');
hold on;

plt.m=m(1:3);
plt.se=ci(1:3);
plt.color='k';
plt.xrange=[0.4 1.2];
plt.yrange=[0.4 1.2];
plt.x=x(1:3);
d_plotpic(plt);

hold on;

plt.m=m(4:6);
plt.se=ci(4:6);
plt.color='k';
plt.xrange=[0.2 1.4];
plt.yrange=[-0.5 2];
plt.x=x(4:6);
d_plotpic2(plt);

set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')


subplot(3,4,3);
data1 =csvread('UnifDLPrec.csv',1,1);

for isub=1:18;
    indx = find(data0(:,1)==isub);
    BelifUp(:,isub)=data1(indx,1);
end;

m=mean(BelifUp,2);
ci=std(BelifUp,0,2)/sqrt(18);

x=[0.4 0.6 0.8 0.8 1 1.2];

errorbar(x(1:3),mP3(1:3),ciP3(1:3),'o','linewidth',1,'Color','k', 'MarkerSize',5,...
    'MarkerEdgeColor','k','MarkerFaceColor','k');
hold on;
errorbar(x(4:6),mP3(4:6),ciP3(4:6),'^','linewidth',1,'Color','k', 'MarkerSize',5,...
    'MarkerEdgeColor','k','MarkerFaceColor','w');
hold on;

plt.m=m(1:3);
plt.se=ci(1:3);
plt.color='k';
plt.xrange=[0.4 1.2];
plt.yrange=[0.4 1.2];
plt.x=x(1:3);
d_plotpic(plt);

hold on;

plt.m=m(4:6);
plt.se=ci(4:6);
plt.color='k';
plt.xrange=[0.2 1.4];
plt.yrange=[-0.5 2];
plt.x=x(4:6);
d_plotpic2(plt);

set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')


subplot(3,4,4);
data1 =csvread('UnifDIsPrec.csv',1,1);

for isub=1:18;
    indx = find(data0(:,1)==isub);
    BelifUp(:,isub)=data1(indx,1);
end;

m=mean(BelifUp,2);
ci=std(BelifUp,0,2)/sqrt(18);

x=[0.4 0.6 0.8 0.8 1 1.2];

errorbar(x(1:3),mP3(1:3),ciP3(1:3),'o','linewidth',1,'Color','k', 'MarkerSize',5,...
    'MarkerEdgeColor','k','MarkerFaceColor','k');
hold on;
errorbar(x(4:6),mP3(4:6),ciP3(4:6),'^','linewidth',1,'Color','k', 'MarkerSize',5,...
    'MarkerEdgeColor','k','MarkerFaceColor','w');
hold on;

plt.m=m(1:3);
plt.se=ci(1:3);
plt.color='k';
plt.xrange=[0.4 1.2];
plt.yrange=[0.4 1.2];
plt.x=x(1:3);
d_plotpic(plt);

hold on;

plt.m=m(4:6);
plt.se=ci(4:6);
plt.color='k';
plt.xrange=[0.2 1.4];
plt.yrange=[-0.5 2];
plt.x=x(4:6);
d_plotpic2(plt);

set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')


subplot(3,4,5);
data1 =csvread('ConvPEPrec.csv',1,1);

for isub=1:18;
    indx = find(data0(:,1)==isub);
    BelifUp(:,isub)=data1(indx,1);
end;

m=mean(BelifUp,2);
ci=std(BelifUp,0,2)/sqrt(18);

x=[0.4 0.6 0.8 0.8 1 1.2];

errorbar(x(1:3),mP3(1:3),ciP3(1:3),'o','linewidth',1,'Color','k', 'MarkerSize',5,...
    'MarkerEdgeColor','k','MarkerFaceColor','k');
hold on;
errorbar(x(4:6),mP3(4:6),ciP3(4:6),'^','linewidth',1,'Color','k', 'MarkerSize',5,...
    'MarkerEdgeColor','k','MarkerFaceColor','w');
hold on;

plt.m=m(1:3);
plt.se=ci(1:3);
plt.color='k';
plt.xrange=[0.4 1.2];
plt.yrange=[0.4 1.2];
plt.x=x(1:3);
d_plotpic(plt);

hold on;

plt.m=m(4:6);
plt.se=ci(4:6);
plt.color='k';
plt.xrange=[0.2 1.4];
plt.yrange=[-0.5 2];
plt.x=x(4:6);
d_plotpic2(plt);

set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')


subplot(3,4,6);
data1 =csvread('ConvPCPrec.csv',1,1);

for isub=1:18;
    indx = find(data0(:,1)==isub);
    BelifUp(:,isub)=data1(indx,1);
end;

m=mean(BelifUp,2);
ci=std(BelifUp,0,2)/sqrt(18);

x=[0.4 0.6 0.8 0.8 1 1.2];

errorbar(x(1:3),mP3(1:3),ciP3(1:3),'o','linewidth',1,'Color','k', 'MarkerSize',5,...
    'MarkerEdgeColor','k','MarkerFaceColor','k');
hold on;
errorbar(x(4:6),mP3(4:6),ciP3(4:6),'^','linewidth',1,'Color','k', 'MarkerSize',5,...
    'MarkerEdgeColor','k','MarkerFaceColor','w');
hold on;

plt.m=m(1:3);
plt.se=ci(1:3);
plt.color='k';
plt.xrange=[0.4 1.2];
plt.yrange=[0.4 1.2];
plt.x=x(1:3);
d_plotpic(plt);

hold on;

plt.m=m(4:6);
plt.se=ci(4:6);
plt.color='k';
plt.xrange=[0.2 1.4];
plt.yrange=[-0.5 2];
plt.x=x(4:6);
d_plotpic2(plt);

set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')



subplot(3,4,7);
data1 =csvread('ConvDLPrec.csv',1,1);

for isub=1:18;
    indx = find(data0(:,1)==isub);
    BelifUp(:,isub)=data1(indx,1);
end;

m=mean(BelifUp,2);
ci=std(BelifUp,0,2)/sqrt(18);

x=[0.4 0.6 0.8 0.8 1 1.2];

errorbar(x(1:3),mP3(1:3),ciP3(1:3),'o','linewidth',1,'Color','k', 'MarkerSize',5,...
    'MarkerEdgeColor','k','MarkerFaceColor','k');
hold on;
errorbar(x(4:6),mP3(4:6),ciP3(4:6),'^','linewidth',1,'Color','k', 'MarkerSize',5,...
    'MarkerEdgeColor','k','MarkerFaceColor','w');
hold on;

plt.m=m(1:3);
plt.se=ci(1:3);
plt.color='k';
plt.xrange=[0.4 1.2];
plt.yrange=[0.4 1.2];
plt.x=x(1:3);
d_plotpic(plt);

hold on;

plt.m=m(4:6);
plt.se=ci(4:6);
plt.color='k';
plt.xrange=[0.2 1.4];
plt.yrange=[-0.5 2];
plt.x=x(4:6);
d_plotpic2(plt);

set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')

subplot(3,4,8);
data1 =csvread('ConvDIsPrec.csv',1,1);

for isub=1:18;
    indx = find(data0(:,1)==isub);
    BelifUp(:,isub)=data1(indx,1);
end;

m=mean(BelifUp,2);
ci=std(BelifUp,0,2)/sqrt(18);

x=[0.4 0.6 0.8 0.8 1 1.2];

errorbar(x(1:3),mP3(1:3),ciP3(1:3),'o','linewidth',1,'Color','k', 'MarkerSize',5,...
    'MarkerEdgeColor','k','MarkerFaceColor','k');
hold on;
errorbar(x(4:6),mP3(4:6),ciP3(4:6),'^','linewidth',1,'Color','k', 'MarkerSize',5,...
    'MarkerEdgeColor','k','MarkerFaceColor','w');
hold on;

plt.m=m(1:3);
plt.se=ci(1:3);
plt.color='k';
plt.xrange=[0.4 1.2];
plt.yrange=[0.4 1.2];
plt.x=x(1:3);
d_plotpic(plt);

hold on;

plt.m=m(4:6);
plt.se=ci(4:6);
plt.color='k';
plt.xrange=[0.2 1.4];
plt.yrange=[-0.5 2];
plt.x=x(4:6);
d_plotpic2(plt);

set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')



subplot(3,4,9);
data1 =csvread('KalmPEPrec.csv',1,1);

for isub=1:18;
    indx = find(data0(:,1)==isub);
    BelifUp(:,isub)=data1(indx,1);
end;

m=mean(BelifUp,2);
ci=std(BelifUp,0,2)/sqrt(18);

x=[0.4 0.6 0.8 0.8 1 1.2];

errorbar(x(1:3),mP3(1:3),ciP3(1:3),'o','linewidth',1,'Color','k', 'MarkerSize',5,...
    'MarkerEdgeColor','k','MarkerFaceColor','k');
hold on;
errorbar(x(4:6),mP3(4:6),ciP3(4:6),'^','linewidth',1,'Color','k', 'MarkerSize',5,...
    'MarkerEdgeColor','k','MarkerFaceColor','w');
hold on;

plt.m=m(1:3);
plt.se=ci(1:3);
plt.color='k';
plt.xrange=[0.4 1.2];
plt.yrange=[0.4 1.2];
plt.x=x(1:3);
d_plotpic(plt);

hold on;

plt.m=m(4:6);
plt.se=ci(4:6);
plt.color='k';
plt.xrange=[0.2 1.4];
plt.yrange=[-0.5 2];
plt.x=x(4:6);
d_plotpic2(plt);

set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')


subplot(3,4,10);
data1 =csvread('KalmPCPrec.csv',1,1);

for isub=1:18;
    indx = find(data0(:,1)==isub);
    BelifUp(:,isub)=data1(indx,1);
end;

m=mean(BelifUp,2);
ci=std(BelifUp,0,2)/sqrt(18);

x=[0.4 0.6 0.8 0.8 1 1.2];

errorbar(x(1:3),mP3(1:3),ciP3(1:3),'o','linewidth',1,'Color','k', 'MarkerSize',5,...
    'MarkerEdgeColor','k','MarkerFaceColor','k');
hold on;
errorbar(x(4:6),mP3(4:6),ciP3(4:6),'^','linewidth',1,'Color','k', 'MarkerSize',5,...
    'MarkerEdgeColor','k','MarkerFaceColor','w');
hold on;

plt.m=m(1:3);
plt.se=ci(1:3);
plt.color='k';
plt.xrange=[0.4 1.2];
plt.yrange=[0.4 1.2];
plt.x=x(1:3);
d_plotpic(plt);

hold on;

plt.m=m(4:6);
plt.se=ci(4:6);
plt.color='k';
plt.xrange=[0.2 1.4];
plt.yrange=[-0.5 2];
plt.x=x(4:6);
d_plotpic2(plt);

set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')



subplot(3,4,11);
data1 =csvread('KalmDLPrec.csv',1,1);

for isub=1:18;
    indx = find(data0(:,1)==isub);
    BelifUp(:,isub)=data1(indx,1);
end;

m=mean(BelifUp,2);
ci=std(BelifUp,0,2)/sqrt(18);

x=[0.4 0.6 0.8 0.8 1 1.2];

errorbar(x(1:3),mP3(1:3),ciP3(1:3),'o','linewidth',1,'Color','k', 'MarkerSize',5,...
    'MarkerEdgeColor','k','MarkerFaceColor','k');
hold on;
errorbar(x(4:6),mP3(4:6),ciP3(4:6),'^','linewidth',1,'Color','k', 'MarkerSize',5,...
    'MarkerEdgeColor','k','MarkerFaceColor','w');
hold on;

plt.m=m(1:3);
plt.se=ci(1:3);
plt.color='k';
plt.xrange=[0.4 1.2];
plt.yrange=[0.4 1.2];
plt.x=x(1:3);
d_plotpic(plt);

hold on;

plt.m=m(4:6);
plt.se=ci(4:6);
plt.color='k';
plt.xrange=[0.2 1.4];
plt.yrange=[-0.5 2];
plt.x=x(4:6);
d_plotpic2(plt);

set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')


subplot(3,4,12);
data1 =csvread('KalmDIsPrec.csv',1,1);

for isub=1:18;
    indx = find(data0(:,1)==isub);
    BelifUp(:,isub)=data1(indx,1);
end;

m=mean(BelifUp,2);
ci=std(BelifUp,0,2)/sqrt(18);

x=[0.4 0.6 0.8 0.8 1 1.2];

errorbar(x(1:3),mP3(1:3),ciP3(1:3),'o','linewidth',1,'Color','k', 'MarkerSize',5,...
    'MarkerEdgeColor','k','MarkerFaceColor','k');
hold on;
errorbar(x(4:6),mP3(4:6),ciP3(4:6),'^','linewidth',1,'Color','k', 'MarkerSize',5,...
    'MarkerEdgeColor','k','MarkerFaceColor','w');
hold on;

plt.m=m(1:3);
plt.se=ci(1:3);
plt.color='k';
plt.xrange=[0.4 1.2];
plt.yrange=[0.4 1.2];
plt.x=x(1:3);
d_plotpic(plt);

hold on;

plt.m=m(4:6);
plt.se=ci(4:6);
plt.color='k';
plt.xrange=[0.2 1.4];
plt.yrange=[-0.5 2];
plt.x=x(4:6);
d_plotpic2(plt);

set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')






function d_plotpic(plt);
m=plt.m;
se=plt.se;
color=[72,143,49]./255;
xrange=plt.xrange;
yrange=plt.yrange;
x=plt.x

y1=m-se;
y2=m+se;


[xx,yy]=fill2line(x,y1,y2);
h=fill(xx,yy,color,'EdgeColor',color,'FaceAlpha',0.5,'EdgeAlpha',0.3);
set(h,'edgecolor','white');
set(gca, 'ylim',yrange);      %[0.7, 1.0000001]
set(gca, 'xlim',xrange);            %[0, 24]

hold on;

plot(x,m,'-',...
                'LineWidth',1,...
                'Color',color)
            hold on;
hold on;

function d_plotpic2(plt);
m=plt.m;
se=plt.se;
color=[222 66 91]./255;
xrange=plt.xrange;
yrange=plt.yrange;
x=plt.x

y1=m-se;
y2=m+se;


[xx,yy]=fill2line(x,y1,y2);
h=fill(xx,yy,color,'EdgeColor',color,'FaceAlpha',0.5,'EdgeAlpha',0.3);
set(h,'edgecolor','white');
set(gca, 'ylim',yrange);      %[0.7, 1.0000001]
set(gca, 'xlim',xrange);            %[0, 24]

hold on;

plot(x,m,'-',...
                'LineWidth',2,...
                'Color',color)
            hold on;
hold on;

            
function [xx,yy]=fill2line(x,y1,y2)


sizX=size(x);
xx(1:sizX(2))=x;
xx(sizX(2)+1:sizX(2)*2)=x(1,sizX(2):-1:1);

yy(1:sizX(2))=y1';
yy(sizX(2)+1:sizX(2)*2)=y2(sizX(2):-1:1,1);
