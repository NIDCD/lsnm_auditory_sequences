% plotfmri.m -- Feb. 1998
%
%  FORMAT:  plotfmri(Tsyn4,Tmr2,synact4,act4,fmriact2)
%
%______________________________________________
%  This function will create plots of selected output of the matrices
%  of the synaptic activity (synact4), the hemodynamically delayed
%  synaptic activity (act4), and the fmri activity (fmriact2).  These
%  matrices are obtained from fmrigen.m.  Tsyn4 is the time values
%  for the first two, Tmr2 for fmriact2.
%
%  The user is requested to select which section of the model will be
%  graphed, Aii, Superior Temporal Sulcus/Gyrus (ST) or Prefrontal (PFC); 
%  each is graphed along with the activity in Ai.
%
%-----------------------------------------------

%  Written :  1-98 by J. Bertelson
%
%  Updated by Antonio Ulloa on Mon Aug 19 13:14:38 EDT 2002
%


function plotfmri(syntime,mrtime,synact,act,mriactivity)

disp(' '); 
answ=menu('What do you want to be graphed? (vs Ai)','Aii','ST','PFC'); 
subplot(3,1,1), plot(syntime,synact(:,[2 (answ+2)]));

if answ==1
  title('Ai vs Aii'),
elseif answ==2
  title('Ai vs STG'),
else
  title('Ai vs PFC')
end

subplot(3,1,2),plot(act(:,1),act(:,[2 (answ+2)]));
subplot(3,1,3),plot(mrtime,mriactivity(:,[2 (answ+2)]));
xlabel('time(sec)');

