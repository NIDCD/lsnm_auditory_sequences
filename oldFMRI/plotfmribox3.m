%  plotfmribox3.m -- May 1998
%
%  FORMAT:		plotfmribox3
%__________________________________________________________
%
%  This program plots the synaptic activities, hemodynamic activities, and 
%  fmri results along with the boxcar stimuli.
%  The user is requested to select which areas will be ploted.
%
% ---------------------------------------------------
%

%  Written:   5-98 by B. Horwitz

subplot(3,1,1), plot(Tsyn4,[bxsynact4(:,2)/max(bxsynact4(:,2))...
 bxsynact4(:,2)/max(bxsynact4(:,2))]);
title('Boxcar and Synaptic activity (Correl. 1)');
subplot(3,1,2), plot(Tsyn4,[bxact4(:,2)/max(bxact4(:,2)),...
bxact4(:,2)/max(bxact2(:,2))]);
title('Hemo Delayed Boxcar and Syn. Activity (Correl. 2)');
subplot(3,1,3), plot(Tmr2,[bxfmriact2(:,2)/max(bxfmriact2(:,2))...
,bxfmriact2(:,2)/max(bxfmriact2(:,2))]);
title('Shifted Hemo boxcar and fMRI activity (Correl. 3)');
