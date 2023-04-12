% calculate Dkl, DIs, predictive error (PE), and prior certainty (PC) base
% on BLS-U

clear;

load('BayesUnif.mat');

t=[0.4 0.6 0.8 0.8 1 1.2];

sizp=size(bootBayes.para);

for i=1:6;
    for j=1:sizp(2);
        for k=1:sizp(3);
            if i>=1 && i <=3;
                x_min=0.4;
               x_max=0.8; 
            else
               x_min=0.8;
               x_max=1.2; 
            end;
               ts=t(i);
               wm=bootBayes.para(1,j,k);
               
               x=x_min:0.001:x_max;
               
               pri0=unifpdf(x,x_min,x_max);
               post0=normpdf(x,ts,ts*wm)/trapz(x,normpdf(x,ts,ts*wm));

               
               DKL(i,j,k) = trapz(x,pri0.*log(pri0./post0));
               DIs(i,j,k) = -trapz(x,pri0.*log2(pri0))+trapz(x,post0.*log2(post0));
               
               mPri=trapz(x,x.*pri0);
               PE(i,j,k) = mPri-ts;
               
               sd2Pri=trapz(x,(x-mPri).^2.*pri0);
               

               PC(i,j,k)=1/sd2Pri;
               
               clear ts wm x pri0 post0;
        end;
    end;
end;

BelifUp.DKL=DKL;
BelifUp.DIs=DIs;
BelifUp.PE=PE;
BelifUp.PC=PC;


savepath='./';
save(strcat(savepath,'BelifUpUnif.mat'),'BelifUp');


