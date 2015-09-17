%plotfmribox
%
%   Jan. 1998
%
%  This program plots the synaptic activities, hemodynamic activities, or %  fmri results along with the boxcar stimuli.
%  The user is requested to select which arrays will be plotted.
%

answ=menu('Choose a pair for graphing','Boxcar and Synaptic activity','Hemo Delayed Boxcar and Syn. Activity','Shifted Hemo boxcar and fMRI activity');
answ2=menu('Which portion of the model?','V1','V4','IT','PFC'); 

if answ==1,
	plot([y1/max(y1)    synact2(:,(answ2+1))/max(synact2(:,(answ2+1)))]);
	title('Boxcar and Synaptic activity (Correl. 1)');
elseif answ==2.
	plot([y2/max(y2)    act2(:,(answ2+1))/max(act2(:,(answ2+1)))]);
	title('Hemo Delayed Boxcar and Syn. Activity (Correl. 2)');
else
	plot([y2p/max(y2p)    fmriact3(:,(answ2+1))/max(fmriact3(:,(answ2+1)))]);
	title('Shifted Hemo boxcar and fMRI activity (Correl. 3)');
end