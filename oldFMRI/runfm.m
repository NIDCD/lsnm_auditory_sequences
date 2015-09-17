%  Written by FT Husain  
%
%  Updated by Antonio Ulloa on Mon Aug 19 11:13:47 EDT 2002
%

clear
parameters
sumsynact

figure(1); plot(synact(:,4), 'r', 'linewidth', 3 );
hold;      plot(synact(:,5), 'b', 'linewidth', 3 );
set(gca, 'xTickLabel', [], 'yTickLabel', []);

fmrigen

figure(2); plot(fmriact2(:,4), 'r', 'linewidth', 3);
hold;      plot(fmriact2(:,5), 'b', 'linewidth', 3);
set(gca, 'xTickLabel', [], 'yTickLabel', []);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%plotfmri(Tsyn4,Tmr2,synact4,act4,fmriact2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
break;
figure(2)
hold on
plot(Tsyn4, synact4(:,2))
plot(Tsyn4, synact4(:,3))
plot(Tsyn4, synact4(:,4));
figure(5);
plot(Tsyn4, synact4(:,5));
