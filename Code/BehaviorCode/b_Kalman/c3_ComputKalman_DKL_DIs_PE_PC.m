clear;

load('BayesKalman.mat');

sizData = size(Bayes.ss);

for i=1:sizData(1);
    for j=1:sizData(2);
           t0=0.03;
           
           ss=Bayes.ss(i,j);
           sigm=Bayes.para(1,j);
           spr=Bayes.spr(i,j);
           sigpr=sqrt(Bayes.sig2pr(i,j));
           
           se=Bayes.se(i,j);
           sigps=sqrt(Bayes.sig2ps(i,j));
           
           
           x=eps:0.001:3;
           u0=spr;
           sig=sigpr;
           Pprior=exp(-((log(1+x/t0)-u0).^2)/(2*(sig)^2))./((x+t0)*sig*sqrt(2*pi))+eps;

           u0=ss;
           sig=sigm;
           Psm=exp(-((log(1+x/t0)-u0).^2)/(2*(sig)^2))./((x+t0)*sig*sqrt(2*pi))+eps;
           
           u0=se;
           sig=sigps;
           Ppost=exp(-((log(1+x/t0)-u0).^2)/(2*(sig)^2))./((x+t0)*sig*sqrt(2*pi))+eps; 
           
           

           DKL(i,j)=trapz(x,Pprior.*(log(Pprior./Ppost)));
           DIs(i,j) = -trapz(x,Pprior.*log2(Pprior))+trapz(x,Ppost.*log2(Ppost));
           PE2(i,j) = t0*(exp(spr)-1) - t0*(exp(ss)-1);
           mPri=trapz(x,x.*Pprior);
           sd2Pri=trapz(x,(x-mPri).^2.*Pprior);
           
           PC(i,j)=1/sd2Pri;
        end;
    end;

BelifUp.DKL=DKL;
BelifUp.DIs=DIs;
BelifUp.PE2=PE2;
BelifUp.PC=PC;

savepath='./';
save(strcat(savepath,'BelifUpKalman.mat'),'BelifUp');
                      