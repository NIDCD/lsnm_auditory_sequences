%plotdb2.m  --  Feb. 1998
%
% Generates plots for D&B experiment #2 (2 sec delay)
% The user is prompted to select a brain region.
% The program 'loaddb' must be run first.

fig1=input('Enter the display window # for figure 1:   ');
fig2=input('Enter the display window # for figure 2:   ');

% ----------------------------------

% actsdshort:  actdshort shifted by 3 seconds (yellow)
% act421b:  act421 with baseline set at 0 units of activity (magenta)

actsdshort=[actdshort(61:length(actdshort),:);actdshort(1:60,:)];
for i=1:5
	act421b(:,i)=act421(:,i)-mean(act421((length(act421)-6):length(act421),i));
end
figure(fig1)


answ=menu('What do you want to be graphed?','V1','V4','IT','PFC'); 
plot(Tsyn4,actsdshort(:,answ+1),'y',Tsyn4,act421b(:,answ+1),'m') 
if answ==1
	title('V1:  First and Est. Second Trials  (2 sec interval)')
elseif answ==2
	title('V4:  First and Est. Second Trials  (2 sec interval)')
elseif answ==3
	title('IT:  First and Est. Second Trials  (2 sec interval)')
else
	title('PFC:  First and Est. Second Trials  (2 sec interval)')
end
xlabel('yellow= Est. 2nd Trial, magenta=1st Trial')


% Now compare with superimposed one- and two-trials
figure(fig2)
plot(Tsyn4,act421(:,answ+1),'y',Tsyn4,act422(:,answ+1),'m')
title('One and Two Trials  (2 sec interval)')
xlabel('yellow=One stimulus, magenta=Two stimuli')
