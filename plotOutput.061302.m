%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% plotOutput.m 
%
% Plot output files of neuronals units for auditory processing 
%
% Antonio Ulloa
% LS/NIDCD/NIH
%
% Fri Mar  1 11:06:18 EST 2002
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%---------------------------------------------------------------------
% Define module units to be plotted
%---------------------------------------------------------------------
yMin = 25;
yMax = 55;
xMin =  1;
xMax =268;
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Number of nodes for each module in the network
%---------------------------------------------------------------------
n = 81;
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Other settings for plotting
%---------------------------------------------------------------------
columns   = 8;
rows      = 3;
lineWidth = 1;
nPlot     = 1;
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
% Plot MGN units
%---------------------------------------------------------------------
load mgns.out
for i=1:n,
  mgn(:,i) = i+mgns(:,i);
end
h=subplot(rows, columns, 9);
plot(mgn(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', []);
title('MGN');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot STG units (excitatory)
%---------------------------------------------------------------------
load estg.out
for i=1:n,
  estg(:,i) = i+estg(:,i);
end
h=subplot(rows, columns, 10);
plot(estg(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', []);
title('STG');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot FS units (excitatory)
%---------------------------------------------------------------------
load exfs.out
for i=1:n,
  exfs(:,i) = i+exfs(:,i);
end
h=subplot(rows, columns, 5);
plot(exfs(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', []);
title('FS_1');

load exfs_a.out
for i=1:n,
  exfs_a(:,i) = i+exfs_a(:,i);
end
h=subplot(rows, columns, 13);
plot(exfs_a(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', []);
title('FS_2');

load exfs_b.out
for i=1:n,
  exfs_b(:,i) = i+exfs_b(:,i);
end
h=subplot(rows, columns, 21);
plot(exfs_b(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', []);
title('FS_3');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot D1 units (excitatory)
%---------------------------------------------------------------------
load efd1.out
for i=1:n,
  efd1(:,i) = i+efd1(:,i);
end
h=subplot(rows, columns, 6);
plot(efd1(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', []);
title('D1_1');

load efd1_a.out
for i=1:n,
  efd1_a(:,i) = i+efd1_a(:,i);
end
h=subplot(rows, columns, 14);
plot(efd1_a(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', []);
title('D1_2');

load efd1_b.out
for i=1:n,
  efd1_b(:,i) = i+efd1_b(:,i);
end
h=subplot(rows, columns, 22);
plot(efd1_b(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', []);
title('D1_3');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot D2 units (excitatory)
%---------------------------------------------------------------------
load efd2.out
for i=1:n,
  efd2(:,i) = i+efd2(:,i);
end
h=subplot(rows, columns, 7); 
plot(efd2(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', []);
title('D2_1');

load efd2_a.out
for i=1:n,
  efd2_a(:,i) = i+efd2_a(:,i);
end
h=subplot(rows, columns, 15);
plot(efd2_a(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', []);
title('D2_2');

load efd2_b.out
for i=1:n,
  efd2_b(:,i) = i+efd2_b(:,i);
end
h=subplot(rows, columns, 23);
plot(efd2_b(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', []);
title('D2_3');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot R units (excitatory)
%---------------------------------------------------------------------
load exfr.out 
for i=1:n,
  exfr(:,i) = i+exfr(:,i);
end
h=subplot(rows, columns, 8);
plot(exfr(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', []);
title('FR_1');

load exfr_a.out 
for i=1:n,
  exfr_a(:,i) = i+exfr_a(:,i);
end
h=subplot(rows, columns, 16);
plot(exfr_a(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', []);
title('FR_2');

load exfr_b.out 
for i=1:n,
  exfr_b(:,i) = i+exfr_b(:,i);
end
h=subplot(rows, columns, 24); 
plot(exfr_b(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', []);
title('FR_3');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot GA units
%---------------------------------------------------------------------
load exga.out
for i=1:n,
  exga(:,i)   = i+exga(:,i);
end
h=subplot(rows, columns, 3); 
plot(exga(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', []);
title('GA_1');

load exga_a.out
for i=1:n,
  exga_a(:,i)   = i+exga_a(:,i);
end
h=subplot(rows, columns, 11); 
plot(exga_a(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', []);
title('GA_2');

load exga_b.out
for i=1:n,
  exga_b(:,i)   = i+exga_b(:,i);
end
h=subplot(rows, columns, 19); 
plot(exga_b(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', []);
title('GA_3');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot GR units
%---------------------------------------------------------------------
load exgr.out
for i=1:n,
  exgr(:,i)   = i+exgr(:,i);
end
h=subplot(rows, columns, 4); 
plot(exgr(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', []);
title('GR_1');

load exgr_a.out
for i=1:n,
  exgr_a(:,i)   = i+exgr_a(:,i);
end
h=subplot(rows, columns, 12); 
plot(exgr_a(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', []);
title('GR_2');

load exgr_b.out
for i=1:n,
  exgr_b(:,i)   = i+exgr_b(:,i);
end
h=subplot(rows, columns, 20); 
plot(exgr_b(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', []);
title('GR_3');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot TI units (excitatory)
%---------------------------------------------------------------------
load exti.out
for i=1:n,
  exti(:,i) = i+exti(:,i);
end
h=subplot(rows, columns, 2);
plot(exti(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
axis([xMin xMax yMin yMax]);
set(h, 'xTickLabel', []);
title('TI');
%---------------------------------------------------------------------