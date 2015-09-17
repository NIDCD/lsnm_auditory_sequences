%  Written by FT Husain  
%
%  Updated by Antonio Ulloa on Mon Aug 19 11:13:47 EDT 2002
%

clear
parameters
sumsynact

fmrigen

%---------------------------------------------------------
% Plot the summed synaptic activity
%---------------------------------------------------------
figure(1); plot(synact(:,1), 'k', 'linewidth', 3 ); hold on;
           plot(synact(:,2), 'g', 'linewidth', 3 );
           plot(synact(:,3), 'm', 'linewidth', 3 );
           plot(synact(:,4), 'r', 'linewidth', 3 );  
           plot(synact(:,5), 'b', 'linewidth', 3 );  
legend('Ai', 'Aii', 'ST', 'PFC', 'Gating' );
%axis([200 1200 0 4000]); 
grid on;

figure(2); plot(synact4(:,1),synact4(:,2), 'g', 'linewidth', 3 ); hold on;
           plot(synact4(:,1),synact4(:,3), 'm', 'linewidth', 3 );
           plot(synact4(:,1),synact4(:,4), 'r', 'linewidth', 3 );
           plot(synact4(:,1),synact4(:,5), 'b', 'linewidth', 3 );  
legend('Aii', 'ST', 'PFC', 'Gating' );


%---------------------------------------------------------
% Plot the fmri BOLD signal
%---------------------------------------------------------
figure(3); plot(fmriact2(:,1),fmriact2(:,2), 'g^-', 'linewidth', 3); hold on;
           plot(fmriact2(:,1),fmriact2(:,3), 'm^-', 'linewidth', 3);
           legend('Aii', 'ST');    
figure(4); plot(fmriact2(:,1),fmriact2(:,4), 'r^-', 'linewidth', 3);
           legend('PFC');
figure(5); plot(fmriact2(:,1),fmriact2(:,5), 'b^-', 'linewidth', 3);
           legend('Gating');
%figure(2); plot(fmriact2(13:21,4), 'm^-', 'linewidth', 3);
%legend('Post PFC (9,46)'); 
%axis([0 10 60000 100000]); 
grid on; hold on;
%figure(3); plot(fmriact2(:,3), 'm^-', 'linewidth', 3);
%figure(3); plot(fmriact2(19:24,5), 'm^-', 'linewidth', 3);
%legend('Ant PFC (10)?'); 
%axis([0 10 10000 14000]); 
grid on; hold on;

%---------------------------------------------------------
% Plot the correlation and the correlation coefficient 
%---------------------------------------------------------
%corr2(fmriact2(:,4), fmriact2(:,5))
%figure(3);
%plot(fmriact2(:,4), fmriact2(:,5), 'o');
%xlabel('Pos PFC (9,46)');
%ylabel('Ant PFC (10)');
%lsline;
