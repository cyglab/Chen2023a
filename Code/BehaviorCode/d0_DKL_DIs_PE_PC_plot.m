path(path,'./a_unif');
path(path,'./c_conv');
path(path,'./b_Kalman');

subplot(3,4,1);
e2_Unif_PE_plot;
set(gca, 'xlim', [0.2, 1.4]);
set(gca, 'ylim', [-0.4, 0.4]);
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')

subplot(3,4,2);
e2_Unif_PC_plot;
set(gca, 'xlim', [0.2, 1.4]);
set(gca, 'ylim', [50, 100]);
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')

subplot(3,4,3);
e2_Unif_DKL_plot;
set(gca, 'xlim', [0.2, 1.4]);
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')

subplot(3,4,4);
e2_Unif_DIs_plot;
set(gca, 'xlim', [0.2, 1.4]);
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')


subplot(3,4,5);
e3_Conv_PE_plot;
set(gca, 'xlim', [0.2, 1.4]);
set(gca, 'ylim', [-0.4, 0.4]);
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')

subplot(3,4,6);
e3_Conv_PC_plot;
set(gca, 'xlim', [0.2, 1.4]);
set(gca, 'ylim', [0, 30]);
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')

subplot(3,4,7);
e3_Conv_DKL_plot;
set(gca, 'xlim', [0.2, 1.4]);
set(gca, 'ylim', [0, 7]);
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')

subplot(3,4,8);
e3_Conv_DIs_plot;
set(gca, 'xlim', [0.2, 1.4]);
set(gca, 'ylim', [0.2, 2]);
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')


subplot(3,4,9);
e4_BayesKalman_PE_plot;
set(gca, 'xlim', [0.2, 1.4]);
set(gca, 'ylim', [-0.4, 0.4]);
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')

subplot(3,4,10);
e4_BayesKalman_PC_plot;
set(gca, 'xlim', [0.2, 1.4]);
set(gca, 'ylim', [0, 500000]);
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')

subplot(3,4,11);
e4_BayesKalman_DKL_plot;
set(gca, 'xlim', [0.2, 1.4]);
set(gca, 'ylim', [0, 35]);
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')

subplot(3,4,12);
e4_BayesKalman_DIs_plot;
set(gca, 'xlim', [0.2, 1.4]);
set(gca, 'ylim', [0.05, 0.35]);
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')

