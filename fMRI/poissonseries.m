% poissonseries.m

function h1=poissonseries(T,lambda)

h1=0;

TP=round(T);

h1=boldhrf(0:2:TP);   %introduced Jun/01/04;
                      % This Boynton's HRF

%for t=0:TP
%  h1=[h1; poisson(lambda,t)]; %commented Jun/01/04 
%end






