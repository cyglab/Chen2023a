% calculate Dkl, DIs, predictive error (PE), and prior certainty (PC) base
% on BLS-C

clear;

load('BayesConv.mat');

t=[0.4 0.6 0.8 0.8 1 1.2];

sizp=size(bootBayes.para);



for i=1:6;
    for j=1:sizp(2);
        for k=1:sizp(3);
            ts=t(i);
            wm=abs(bootBayes.para(1,j,k));
            x=-10:0.001:10;
            if i>=1 && i <=3;
                 % pri0=(normpdf(x,0.4,0.4*wm)+normpdf(x,0.6,0.6*wm)+normpdf(x,0.8,0.8*wm))/3+eps;
                 pri0=(normpdf(x,0.4,0.4*0.22)+normpdf(x,0.6,0.6*0.22)+normpdf(x,0.8,0.8*0.22))/3+eps;
            else
                 % pri0=(normpdf(x,0.8,0.8*wm)+normpdf(x,1,1*wm)+normpdf(x,1.2,1.2*wm))/3+eps;
                 pri0=(normpdf(x,0.8,0.8*0.22)+normpdf(x,1,1*0.22)+normpdf(x,1.2,1.2*0.22))/3+eps;

            end;
            
               post0=pri0.*normpdf(x,ts,ts*wm)/trapz(x,pri0.*normpdf(x,ts,ts*wm))+eps;

               
               DKL(i,j,k) = trapz(x,pri0.*(log(pri0)-log(post0)));
               DIs(i,j,k) = -trapz(x,pri0.*log2(pri0))+trapz(x,post0.*log2(post0));
               
               mPri=trapz(x,x.*pri0);
               PE(i,j,k) = mPri - ts;
               
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
save(strcat(savepath,'BelifUpConv.mat'),'BelifUp');

