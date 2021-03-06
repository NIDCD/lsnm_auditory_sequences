%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% plotOutputList.m 
%
% Plot output files of neuronals units for auditory processing 
% for auditory list memory
%
% Fatima Husain
% Antonio Ulloa
% National Instutes of Health
%
% Tue Oct 28 12:46:54 EST 2003
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%---------------------------------------------------------------------
% Define module units to be plotted
%---------------------------------------------------------------------
clear all;
yMin =  25;
yMax =  65;
xMin =   1;    
xMax = 575;         % 368 x 5 ~ 1840 timesteps; 1840 x 5 = 9200 ms
                    % Subtract:
                    % 128 for A   vs A   sequences
                    %  96 for A   vs AB  sequences
                    %  64 for ABC vs A or AB vs AB  sequences, or
                    %  32 for ABC vs AB  sequences
                    %  16 for 200-ms intersegmental gaps
                    %  32 for 100-ms intersegmental gaps
                    %  40 for  50-ms intersegmental gaps
                    %  60 for 250-ms segments
                    % Add:  
                    %  60 for 750-ms segments
                    %  16 for 400-ms intersegmental gaps
                    %  32 for 500-ms intersegmental gaps

%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Number of nodes for each module in the network
%---------------------------------------------------------------------
n = 81;
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Other settings for plotting
%---------------------------------------------------------------------
columns   = 11;
rows      =  3;
lineWidth =  .5;
nPlot     =  1;
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Position and dimension of main window
%---------------------------------------------------------------------
x0 =    5;
y0 =    5;
w  = 1250;
h  =  500;
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Display main window
%---------------------------------------------------------------------
mainWindow=figure;
set(mainWindow, 'Position', [x0 y0 w h]);
set(mainWindow, 'Name', 'Network evolution', 'numberTitle', 'off' );
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot Attention
%---------------------------------------------------------------------
load atts.out
h=subplot(rows, columns, 1);
plot(atts);
axis([xMin xMax 0 1]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('Att');


%---------------------------------------------------------------------
% Plot MGN units
%---------------------------------------------------------------------
load mgns.out
for i=1:n,
  mgn(:,i) = i+mgns(:,i);
end
h=subplot(rows, columns, 12);
plot(mgn(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('MGN');

%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot Ai units (excitatory)
%---------------------------------------------------------------------
load ea1u.out
for i=1:n,
  ea1u(:,i) = i+ea1u(:,i);
end
h=subplot(rows, columns, 2);
plot(ea1u(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('A_{iu}');

load ea1d.out
for i=1:n,
  ea1d(:,i) = i+ea1d(:,i);
end
h=subplot(rows, columns, 24);
plot(ea1d(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('A_{id}');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot Aii units (excitatory)
%---------------------------------------------------------------------
load ea2u.out
for i=1:n,
  ea2u(:,i) = i+ea2u(:,i);
end
h=subplot(rows, columns, 3);
plot(ea2u(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('A_{iiu}');

load ea2c.out
for i=1:n,
  ea2c(:,i) = i+ea2c(:,i);
end
h=subplot(rows, columns, 14);
plot(ea2c(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('A_{iic}');

load ea2d.out
for i=1:n,
  ea2d(:,i) = i+ea2d(:,i);
end
h=subplot(rows, columns, 25);
plot(ea2d(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('A_{iid}');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot STG units (excitatory)
%---------------------------------------------------------------------
load estg.out
for i=1:n,
  estg(:,i) = i+estg(:,i);
end
h=subplot(rows, columns, 15);
plot(estg(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('STG');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot FS units (excitatory)
%---------------------------------------------------------------------
load exfs.out
for i=1:n,
  exfs(:,i) = i+exfs(:,i);
end
h=subplot(rows, columns, 8);
plot(exfs(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('FS_1');

load exfs_a.out
for i=1:n,
  exfs_a(:,i) = i+exfs_a(:,i);
end
h=subplot(rows, columns, 19);
plot(exfs_a(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('FS_2');

load exfs_b.out
for i=1:n,
  exfs_b(:,i) = i+exfs_b(:,i);
end
h=subplot(rows, columns, 30);
plot(exfs_b(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('FS_3');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot D1 units (excitatory)
%---------------------------------------------------------------------
load efd1.out
for i=1:n,
  efd1(:,i) = i+efd1(:,i);
end
h=subplot(rows, columns, 9);
plot(efd1(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('D1_1');

load efd1_a.out
for i=1:n,
  efd1_a(:,i) = i+efd1_a(:,i);
end
h=subplot(rows, columns, 20);
plot(efd1_a(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('D1_2');

load efd1_b.out
for i=1:n,
  efd1_b(:,i) = i+efd1_b(:,i);
end
h=subplot(rows, columns, 31);
plot(efd1_b(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('D1_3');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot D2 units (excitatory)
%---------------------------------------------------------------------
load efd2.out
for i=1:n,
  efd2(:,i) = i+efd2(:,i);
end
h=subplot(rows, columns, 10); 
plot(efd2(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('D2_1');

load efd2_a.out
for i=1:n,
  efd2_a(:,i) = i+efd2_a(:,i);
end
h=subplot(rows, columns, 21);
plot(efd2_a(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('D2_2');

load efd2_b.out
for i=1:n,
  efd2_b(:,i) = i+efd2_b(:,i);
end
h=subplot(rows, columns, 32);
plot(efd2_b(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('D2_3');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot R units (excitatory)
%---------------------------------------------------------------------
load exfr.out 
for i=1:n,
  exfr(:,i) = i+exfr(:,i);
end
h=subplot(rows, columns, 11);
plot(exfr(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('FR_1');

load exfr_a.out 
for i=1:n,
  exfr_a(:,i) = i+exfr_a(:,i);
end
h=subplot(rows, columns, 22);
plot(exfr_a(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('FR_2');

load exfr_b.out 
for i=1:n,
  exfr_b(:,i) = i+exfr_b(:,i);
end
h=subplot(rows, columns, 33); 
plot(exfr_b(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('FR_3');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot GA units
%---------------------------------------------------------------------
load exga.out
for i=1:n,
  exga(:,i)   = i+exga(:,i);
end
h=subplot(rows, columns, 5); 
plot(exga(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('GA_1');

load exga_a.out
for i=1:n,
  exga_a(:,i)   = i+exga_a(:,i);
end
h=subplot(rows, columns, 16); 
plot(exga_a(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('GA_2');

load exga_b.out
for i=1:n,
  exga_b(:,i)   = i+exga_b(:,i);
end
h=subplot(rows, columns, 27); 
plot(exga_b(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('GA_3');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot GR units
%---------------------------------------------------------------------
load exgr.out
for i=1:n,
  exgr(:,i)   = i+exgr(:,i);
end
h=subplot(rows, columns, 6); 
plot(exgr(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('GR_1');

load exgr_a.out
for i=1:n,
  exgr_a(:,i)   = i+exgr_a(:,i);
end
h=subplot(rows, columns, 17); 
plot(exgr_a(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('GR_2');

load exgr_b.out
for i=1:n,
  exgr_b(:,i)   = i+exgr_b(:,i);
end
h=subplot(rows, columns, 28); 
plot(exgr_b(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('GR_3');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot RG units
%---------------------------------------------------------------------
load exrg.out
for i=1:n,
  exrg(:,i)   = i+exrg(:,i);
end
h=subplot(rows, columns, 7); 
plot(exrg(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('RG_1');

load exrg_a.out
for i=1:n,
  exrg_a(:,i)   = i+exrg_a(:,i);
end
h=subplot(rows, columns, 18); 
plot(exrg_a(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('RG_2');

load exrg_b.out
for i=1:n,
  exrg_b(:,i)   = i+exrg_b(:,i);
end
h=subplot(rows, columns, 29); 
plot(exrg_b(xMin:xMax,yMin:yMax), ...
     'k', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', [], 'yTicklabel', []);
title('RG_3');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot some of the modules in separate windows
%---------------------------------------------------------------------
%figure(2)
%plot(mgn(15:110, 26:54), ...
%     'k', 'linewidth', 3);
%axis([xMin 100 26:54]);
%set(gca, 'xTickLabel', [], 'yTickLabel', []);

%figure(2)
%plot(mgn(xMin:xMax,yMin:yMax), ...
%     'k', 'linewidth', 3);
%axis([xMin xMax yMin yMax]);
%set(gca, 'xTickLabel', [], 'yTickLabel', []);

%figure(3)
%plot(estg(xMin:xMax,yMin:yMax), ...
%     'k', 'linewidth', 3);
%axis([xMin xMax yMin yMax]);
%set(gca, 'xTickLabel', [], 'yTickLabel', []);

%figure(4)
%plot(exga(xMin:xMax,yMin:yMax), ...
%     'k', 'linewidth', 3);
%axis([xMin xMax yMin yMax]);
%set(gca, 'xTickLabel', [], 'yTickLabel', []);

%figure(5)
%plot(exga_a(xMin:xMax,yMin:yMax), ...
%     'k', 'linewidth', 3);
%axis([xMin xMax yMin yMax]);
%set(gca, 'xTickLabel', [], 'yTickLabel', []);

%figure(6)
%plot(exga_b(xMin:xMax,yMin:yMax), ...
%     'k', 'linewidth', 3);
%axis([xMin xMax yMin yMax]);
%set(gca, 'xTickLabel', [], 'yTickLabel', []);

%figure(7)
%plot(exfs(xMin:xMax,yMin:yMax), ...
%     'k', 'linewidth', 3);
%axis([xMin xMax yMin yMax]);
%set(gca, 'xTickLabel', [], 'yTickLabel', []);

%figure(8) 
%plot(exfs_a(xMin:xMax,yMin:yMax), ...
%     'k', 'linewidth', 3);
%axis([xMin xMax yMin yMax]);
%set(gca, 'xTickLabel', [], 'yTickLabel', []);

%figure(9)
%plot(exfs_b(xMin:xMax,yMin:yMax), ...
%     'k', 'linewidth', 3);
%axis([xMin xMax yMin yMax]);
%set(gca, 'xTickLabel', [], 'yTickLabel', []);

%figure(10)
%plot(exfr(xMin:xMax,yMin:yMax), ...
%     'k', 'linewidth', 3);
%axis([xMin xMax yMin yMax]);
%set(gca, 'xTickLabel', [], 'yTickLabel', []);

%figure(11)
%plot(exfr_a(xMin:xMax,yMin:yMax), ...
%     'k', 'linewidth', 3);
%axis([xMin xMax yMin yMax]);
%set(gca, 'xTickLabel', [], 'yTickLabel', []);

%figure(12)
%plot(exfr_b(xMin:xMax,yMin:yMax), ...
%     'k', 'linewidth', 3);
%axis([xMin xMax yMin yMax]);
%set(gca, 'xTickLabel', [], 'yTickLabel', []);

%---------------------------------------------------------------------
% Runs decision
%---------------------------------------------------------------------
decision;
%---------------------------------------------------------------------