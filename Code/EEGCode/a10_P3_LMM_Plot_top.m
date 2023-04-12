clear;

eeglab;
load('./ERPdata/chan.mat');

x=0:4:796;

indx = find(x==352);
subplot(3,4,1);
load('lmeERPufPE.mat')
topoplot(lmeERP.t(indx,:),chan,'style','both', 'electrodes','on');
clear lmeERP;

subplot(3,4,2);
load('lmeERPufDkl.mat')
topoplot(lmeERP.t(indx,:),chan,'style','both', 'electrodes','on');
clear lmeERP;

subplot(3,4,3);
load('lmeERPufDIs.mat')
topoplot(lmeERP.t(indx,:),chan,'style','both', 'electrodes','on');
clear lmeERP;

subplot(3,4,5);
load('lmeERPcvPE.mat')
topoplot(lmeERP.t(indx,:),chan,'style','both', 'electrodes','on');
clear lmeERP;

subplot(3,4,6);
load('lmeERPcvPC.mat')
topoplot(lmeERP.t(indx,:),chan,'style','both', 'electrodes','on');
clear lmeERP;

subplot(3,4,7);
load('lmeERPcvDkl.mat')
topoplot(lmeERP.t(indx,:),chan,'style','both', 'electrodes','on');
clear lmeERP;

subplot(3,4,8);
load('lmeERPcvDIs.mat')
topoplot(lmeERP.t(indx,:),chan,'style','both', 'electrodes','on');
clear lmeERP;

subplot(3,4,9);
load('lmeERPkmPE.mat')
topoplot(lmeERP.t(indx,:),chan,'style','both', 'electrodes','on');
clear lmeERP;


subplot(3,4,10);
load('lmeERPkmPC.mat')
topoplot(lmeERP.t(indx,:),chan,'style','both', 'electrodes','on');
clear lmeERP;


subplot(3,4,11);
load('lmeERPkmDkl.mat')
topoplot(lmeERP.t(indx,:),chan,'style','both', 'electrodes','on');
clear lmeERP;


subplot(3,4,12);
load('lmeERPkmDIs.mat')
topoplot(lmeERP.t(indx,:),chan,'style','both', 'electrodes','on');
clear lmeERP;