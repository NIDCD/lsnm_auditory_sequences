%  checkboxes.m -- May, 1996
%
%  FORMAT: 	checkboxes
%_______________________________________________________
%
%  This program generates the stimuli used for 
%  the large-scale neural modeling simulation.
%
%  This program calls the following:
%
%  /afs/alw.nih.gov/nia/horwitz/lnsmatlab
%      save_mat.m; generate_stim.m;
%
%-------------------------------------------------------

%  Written:  March, 1996 by B. Horwitz


clear
close all

idim=9;

whitebg(0,'black')

figure('Color',[1 1 1]*.8,'Name',' ',...
        'NumberTitle','on','Position',[020 20 400 320],'Resize','off');
uicontrol(1,'Style','Frame','Position',[50 250 200 050]);
c='MAKING STIMULI';
uicontrol(1,'Style','Text', 'Position',[51 255 180 40],...
'String',c,'ForegroundColor',[1 0 0]);

for i=1:idim
  for j=1:idim
    h(i,j)=uicontrol(1,'Style','Checkbox','Position',[020*i 020*j 20 20]);
  end
end

disp(' '); disp('Click on appropriate buttons to make stimulus'); 
disp('Type return when finished'); disp(' ');

keyboard

A=zeros(idim,idim);

for i=1:idim
  for j=1:idim
   A(i,j)=get(h(i,j),'Value');
  end
end

B=flipud(A');

h1=uicontrol(1,'Style','Edit','Position',[220,150,160,30]);
disp(' '); 
disp('Enter name of file to be saved, then press "SAVE MATRIX":  '); 
disp(' ');

uicontrol(1,'String','SAVE MATRIX',         'Position',[220 200 160 30],...
'CallBack','save_mat','Interruptible','yes','ForegroundColor',[0 0 1]);

