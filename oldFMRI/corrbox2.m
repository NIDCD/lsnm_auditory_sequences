%  corrbox2.m --May 1998
%
%  FORMAT:		corrbox2
%_______________________________________________________
%
%  This program constructs a boxcar reference wave, hemodynamically
%  smooths it (by lambda), and correlates it with the hemodynamically 
%  delayed synaptic activity (act4), and with the (interpolated) fMRI 
%  activity (fmriact2).  The original boxcar is also correlated with the 
%  original synaptic activity (synact4).
%
%  The input parameters come from fmrigenbox.m.
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
%-------------------------------------------------
%

%  Written:  5-98 by B. Horwitz

%  Construct boxcar reference wave form

fmrigenbox
load synact
fmrigen

[r1 c1]=size(synact4);
[r2 c2]=size(fmriact2);

for i=2:c1		
  a=corrcoef(bxsynact4(:,2),synact4(:,i));	%  Correl. with synaptic act.
  b=corrcoef(bxact4(:,2),act4(:,i));	%  Correl. with hemo-delay syn. act.
  correl1(i-1)=a(1,2);
  correl2(i-1)=b(1,2);
end

%--------------------------------------------------

%  Correlations with fMRI activity

for i=2:c2
  bf=corrcoef(bxfmriact2(:,2),fmriact2(:,i));
  correl3(i-1)=bf(1,2);	% correl. frmiact2
end				

disp(' '); disp('The correlations are:');
disp('correl1 (synacptic act.):  '); disp(correl1);disp(' ');
disp('correl2 (hemo synaptic act.):  '); disp(correl2);disp(' ');
disp('correl3 (fmri act.) :  '); disp(correl3);disp(' ');
