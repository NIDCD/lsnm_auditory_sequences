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
yMin = 40;
yMax = 50;
xMin =  1;
xMax =350;
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Number of nodes for each module in the network
%---------------------------------------------------------------------
n = 81;
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Other settings for plotting
%---------------------------------------------------------------------
columns   = 4;
rows      = 5;
lineWidth = 1;
nPlot     = 1;
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Position and dimension of main window
%---------------------------------------------------------------------
x0 =    5;
y0 =    5;
w  = 1000;
h  =  800;
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
subplot(columns, rows, nPlot); nPlot=nPlot+1;
plot(mgn(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
title('MGN');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot Excitatory up-selective units in Ai
%---------------------------------------------------------------------
%load ea1u.out
%for i=1:n,
%  e1u(:,i) = i+ea1u(:,i);
%end
%subplot(columns, rows, nPlot); nPlot=nPlot+1;
%plot(e1u(xMin:xMax,yMin:yMax), ...
%     'b', 'linewidth', lineWidth);
%title('EAiu');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot Excitatory down-selective units in Ai
%---------------------------------------------------------------------
%load ea1d.out
%for i=1:n,
%  e1d(:,i) = i+ea1d(:,i);
%end
%subplot(columns, rows, nPlot); nPlot=nPlot+1;
%plot(e1d(xMin:xMax,yMin:yMax), ...
%     'b', 'linewidth', lineWidth);
%title('EAid');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot Excitatory up-selective units in Aii
%---------------------------------------------------------------------
%load ea2u.out
%for i=1:n,
%  e2u(:,i) = i+ea2u(:,i);
%end
%subplot(columns, rows, nPlot); nPlot=nPlot+1;
%plot(e2u(xMin:xMax,yMin:yMax), ...
%     'b', 'linewidth', lineWidth);
%title('EAiiu');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot Excitatory down-selective units in Aii
%---------------------------------------------------------------------
%load ea2d.out
%for i=1:n,
%  e2d(:,i) = i+ea2d(:,i);
%end
%subplot(columns, rows, nPlot); nPlot=nPlot+1;
%plot(e2d(xMin:xMax,yMin:yMax), ...
%     'b', 'linewidth', lineWidth);
%title('EAiid');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot Excitatory contour-selective units in Aii
%---------------------------------------------------------------------
%load ea2c.out
%for i=1:n,
%  e2c(:,i) = i+ea2c(:,i);
%end
%subplot(columns, rows, nPlot); nPlot=nPlot+1;
%plot(e2c(xMin:xMax,yMin:yMax), ...
%     'b', 'linewidth', lineWidth);
%title('EAiic');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot STG units (excitatory)
%---------------------------------------------------------------------
load estg.out
for i=1:n,
  estg(:,i) = i+estg(:,i);
end
subplot(columns, rows, nPlot); nPlot=nPlot+1;
plot(estg(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
title('ESTG');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot FS units (excitatory)
%---------------------------------------------------------------------
load exfs.out
for i=1:n,
  exfs(:,i) = i+exfs(:,i);
end
subplot(columns, rows, nPlot); nPlot=nPlot+1;
plot(exfs(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
title('FS');

load exfs_a.out
for i=1:n,
  exfs_a(:,i) = i+exfs_a(:,i);
end
subplot(columns, rows, nPlot); nPlot=nPlot+1;
plot(exfs_a(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
title('FS_a');

load exfs_b.out
for i=1:n,
  exfs_b(:,i) = i+exfs_b(:,i);
end
subplot(columns, rows, nPlot); nPlot=nPlot+1;
plot(exfs_b(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
title('FS_b');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot D1 units (excitatory)
%---------------------------------------------------------------------
load efd1.out
for i=1:n,
  efd1(:,i) = i+efd1(:,i);
end
subplot(columns, rows, nPlot); nPlot=nPlot+1;
plot(efd1(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
title('D1');

load efd1_a.out
for i=1:n,
  efd1_a(:,i) = i+efd1_a(:,i);
end
subplot(columns, rows, nPlot); nPlot=nPlot+1;
plot(efd1_a(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
title('D1_a');

load efd1_b.out
for i=1:n,
  efd1_b(:,i) = i+efd1_b(:,i);
end
subplot(columns, rows, nPlot); nPlot=nPlot+1;
plot(efd1_b(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
title('D1_b');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot D2 units (excitatory)
%---------------------------------------------------------------------
load efd2.out
for i=1:n,
  efd2(:,i) = i+efd2(:,i);
end
subplot(columns, rows, nPlot); nPlot=nPlot+1;
plot(efd2(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
title('D2');

load efd2_a.out
for i=1:n,
  efd2_a(:,i) = i+efd2_a(:,i);
end
subplot(columns, rows, nPlot); nPlot=nPlot+1;
plot(efd2_a(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
title('D2_a');

load efd2_b.out
for i=1:n,
  efd2_b(:,i) = i+efd2_b(:,i);
end
subplot(columns, rows, nPlot); nPlot=nPlot+1;
plot(efd2_b(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
title('D2_b');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot R units (excitatory)
%---------------------------------------------------------------------
load exfr.out 
for i=1:n,
  exfr(:,i) = i+exfr(:,i);
end
subplot(columns, rows, nPlot); nPlot=nPlot+1;
plot(exfr(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
title('R');

load exfr_a.out 
for i=1:n,
  exfr_a(:,i) = i+exfr_a(:,i);
end
subplot(columns, rows, nPlot); nPlot=nPlot+1;
plot(exfr_a(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
title('R_a');

load exfr_b.out 
for i=1:n,
  exfr_b(:,i) = i+exfr_b(:,i);
end
subplot(columns, rows, nPlot); nPlot=nPlot+1;
plot(exfr_b(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
title('R_b');
%---------------------------------------------------------------------

%---------------------------------------------------------------------
% Plot GA units
%---------------------------------------------------------------------
load exga.out
for i=1:n,
  exga(:,i)   = i+exga(:,i);
end
subplot(columns, rows, nPlot); nPlot=nPlot+1; 
plot(exga(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
title('GA');

load exga_a.out
for i=1:n,
  exga_a(:,i)   = i+exga_a(:,i);
end
subplot(columns, rows, nPlot); nPlot=nPlot+1; 
plot(exga_a(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
title('GA_a');

load exga_b.out
for i=1:n,
  exga_b(:,i)   = i+exga_b(:,i);
end
subplot(columns, rows, nPlot); nPlot=nPlot+1; 
plot(exga_b(xMin:xMax,yMin:yMax), ...
     'b', 'linewidth', lineWidth);
title('GA_b');
%---------------------------------------------------------------------
