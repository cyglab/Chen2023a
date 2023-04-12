path(path,'./a_unif');
path(path,'./c_conv');
path(path,'./b_Kalman');

subplot(2,2,1)
d0_oneSub_hist;
hold on;

set(gca, 'xlim', [0.2, 1.4]);
set(gca, 'ylim', [0.2, 1.4]);
set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')

subplot(2,2,2)
d1_data_mean_tp;
hold on;


d2_BayesUnif_te_plot;

set(gca, 'xlim', [0.2, 1.4]);
set(gca, 'ylim', [0.2, 1.4]);

set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')

subplot(2,2,3)

d1_data_mean_tp;
hold on;

d2_BayesConv_te_plot;

set(gca, 'xlim', [0.2, 1.4]);
set(gca, 'ylim', [0.2, 1.4]);

set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')

subplot(2,2,4)

d1_data_mean_tp;
hold on;

d2_BayesKalman_te_plot;

set(gca, 'xlim', [0.2, 1.4]);
set(gca, 'ylim', [0.2, 1.4]);

set(gca,'FontSize',12);
set(gca,'Fontname', 'Arial')

