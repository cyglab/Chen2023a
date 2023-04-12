function DLplot( )

clear;

load('BayesKalman.mat');
load('BelifUpKalman.mat');

context = [1 2];
ts = [0.4 0.6 0.8 0.8 1 1.2];

for isub = 1:18;
    for its = 1:6;
        if its >= 1 && its <=3;
            indx1 = find(Bayes.context(:,isub) == 1);
        else if its > 3;
                indx1 = find(Bayes.context(:,isub) == 2);           
            end;
        end;
            indx2 = find(Bayes.ts(:,isub) == ts(its));
            indx = intersect(indx1,indx2);
            PC(its,isub) = mean(BelifUp.PC(indx,isub),1);
    end;
end;
       
mD=mean(PC,2);
seD=1.96*std(PC,0,2)/sqrt(18);


plt.m=mD(1:3);
plt.se=seD(1:3);
plt.color=[72,143,49]./255;
plt.xrange=[0.4 1.2];
plt.yrange=[0 10];
plt.x=[0.4 0.6 0.8];
d_plotpic(plt);

hold on;

plt.m=mD(4:6);
plt.se=seD(4:6);
plt.color=[222 66 91]./255;
plt.xrange=[0.4 1.2];
plt.yrange=[0 500000];
plt.x=[0.8 1 1.2];
d_plotpic2(plt);

kalmPC=PC(:);
csvwrite('bKalmPC.csv',kalmPC)
    
  
function d_plotpic(plt);
m=plt.m;
se=plt.se;
color=plt.color;
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
color=plt.color;
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
    
    

