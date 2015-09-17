%  plotfmribox2.m -- April 1998
%
%  FORMAT:		plotfmribox2
%__________________________________________________________
%
%  This program plots the synaptic activities, hemodynamic activities, and 
%  fmri results along with the boxcar stimuli.
%  The user is requested to select which areas will be ploted.
%
% ---------------------------------------------------
%

%  Written:  1-98 by J. Bertelson and B. Horwitz; modified 4-98

answ2=menu('Which area of the model to plot?','V1','V4','IT','PFC'); 


subplot(3,1,1), plot([y1/max(y1),synact2(:,(answ2+1))/max(synact2(:,(answ2+1)))]);
title('Boxcar and Synaptic activity (Correl. 1)');
subplot(3,1,2), plot([y2/max(y2),act2(:,(answ2+1))/max(act2(:,(answ2+1)))]);
title('Hemo Delayed Boxcar and Syn. Activity (Correl. 2)');
subplot(3,1,3), plot([y4/max(y4),fmriact4(:,(answ2+1))/max(fmriact4(:,(answ2+1)))]);
title('Shifted Hemo boxcar and fMRI activity (Correl. 3)');
