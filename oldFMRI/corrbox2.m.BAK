%  corrbox1.m --Apr. 1998
%
%  FORMAT:		corrbox1
%_______________________________________________________
%
%  This program constructs a boxcar reference wave, hemodynamically
%  smooths it (by lambda), and correlates it with the hemodynamically 
%  delayed synaptic activity (act4), and with the (interpolated) fMRI 
%  activity (fmriact2).  The original boxcar is also correlated with the 
%  original synaptic activity (synact4).
%
%  The input parameters come from fmrigen.m.
%
%  In this program, a trial consists of a stimulus, a delay, a second
%  stimulus, and a second delay (the inter-trial interval).  There may be an
%  initial delay (T0).  One of the two stimuli may not be present (e.g., T1
%  or T3 may be zero).
%
%  Output variables are 
%
%	correl1 -- correl. between orig. boxcar and orig. synap. act.
%	correl2 -- correl. between hemo boxcar  and hemo synap. act.
%	correl3 -- correl. between hemo boxcar and fmri act. (interpolated) %
%  We also construct correl2p, which is the same correl. as correl2, but for
%  the entire time course.
%
%-------------------------------------------------
%

%  Written:  4-98 by B. Horwitz
%  (Modified from corrbox.m)

%  Construct boxcar reference wave form

y=boxcar((T/Ttrial),T0,T1,T2,T3,T4,Ti);
yp=[0; y];
yq=convol(yp,lambda,Ti,T);
[r c]=size(yq);
yqq=yq(2:r,2);

y1=y((Ttrial/Ti)+1:length(y));		%boxcar
y2=yqq((Ttrial/Ti)+1:length(yqq));		%hemo-delayed boxcar
y3=y2(ivalue:length(y2));
y4=y3(1:jvalue); 			%hemo-delayed boxcar
					%     with Tmr2 time values at ends

% Unshifted correlations 

[r c]=size(synact2);

for i=2:c		
  a=corrcoef(y1,synact2(:,i));		%  Correl. with synaptic act.
  b=corrcoef(y4,act4(:,i));		%  Correl. with hemo-delay syn. act.
  correl1(i-1)=a(1,2);
  correl2(i-1)=b(1,2);
  b1=corrcoef(y2,act2(:,i));
  correl2p(i-1)=b1(1,2);
end

%--------------------------------------------------

%  Correlations with fMRI activity

rr=round(Tr/Ti);

for i=1:c
  fmriact3(:,i)=interp(fmriact2(:,i),rr);	%  interpolated fmri activity
end

fmriact4=fmriact3(1:length(act4(:,1)),:);


for i=2:5
  bf=corrcoef(y4,fmriact4(:,i));
  correl3(i-1)=bf(1,2);	% correl. frmiact4 with hemo boxcar
end				


