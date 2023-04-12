
x=0:4:796;

subplot(3,2,1);
load('lmeERPufPE.mat')
plot(x,lmeERP.t(:,53),'LineWidth',2,'Color',[0 63 92]/255);
hold on;
clear lmeERP;

load('lmeERPufDkl.mat')
plot(x,lmeERP.t(:,53),'LineWidth',2,'Color',[239 86 117]/255);
hold on;
clear lmeERP;

load('lmeERPufDIs.mat')
plot(x,lmeERP.t(:,53),'LineWidth',2,'Color',[255 166 0]/255);
hold on;
clear lmeERP;

plot([0, 800],[0,0],'--k','LineWidth',1);
%plot([350, 350],[-4,8],'-k','LineWidth',1);
set(gca, 'xlim', [0, 800]);
set(gca, 'ylim', [-4, 8]);
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')

fill ([200 200 500 500],[-2 7 7 -2],'k','facealpha',0.1);



subplot(3,2,3);

load('lmeERPcvPE.mat')
plot(x,lmeERP.t(:,53),'LineWidth',2,'Color',[0 63 92]/255);
hold on;
clear lmeERP;

load('lmeERPcvPC.mat')
plot(x,lmeERP.t(:,53),'LineWidth',2,'Color',[122 81 149]/255);
hold on;
clear lmeERP;

load('lmeERPcvDkl.mat')
plot(x,lmeERP.t(:,53),'LineWidth',2,'Color',[239 86 117]/255);
hold on;
clear lmeERP;

load('lmeERPcvDIs.mat')
plot(x,lmeERP.t(:,53),'LineWidth',2,'Color',[255 166 0]/255);
hold on;
clear lmeERP;

plot([0, 800],[0,0],'--k','LineWidth',1);
%plot([350, 350],[-4,8],'-k','LineWidth',1);
set(gca, 'xlim', [0, 800]);
set(gca, 'ylim', [-4, 8]);
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')

fill ([200 200 500 500],[-2 7 7 -2],'k','facealpha',0.1);




subplot(3,2,5);

load('lmeERPkmPE.mat')
plot(x,lmeERP.t(:,53),'LineWidth',2,'Color',[0 63 92]/255);
hold on;
clear lmeERP;

load('lmeERPkmPC.mat')
plot(x,lmeERP.t(:,53),'LineWidth',2,'Color',[122 81 149]/255);
hold on;
clear lmeERP;

load('lmeERPkmDkl.mat')
plot(x,lmeERP.t(:,53),'LineWidth',2,'Color',[239 86 117]/255);
hold on;
clear lmeERP;

load('lmeERPkmDIs.mat')
plot(x,lmeERP.t(:,53),'LineWidth',2,'Color',[255 166 0]/255);
hold on;
clear lmeERP;

plot([0, 800],[0,0],'--k','LineWidth',1);
%plot([350, 350],[-4,8],'-k','LineWidth',1);
set(gca, 'xlim', [0, 800]);
set(gca, 'ylim', [-4, 8]);
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')

fill ([200 200 500 500],[-2 7 7 -2],'k','facealpha',0.1);

