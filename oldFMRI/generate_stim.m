%  generate_stim.m -- May, 1996
%
%  FORMAT:		generate_stim
%_______________________________________________________
%
%  This is the startup program for generating the stimuli used for 
%  the large-scale neural modeling simulation.
%
%  This program calls the following:
%
%  /afs/alw.nih.gov/nia/horwitz/lnsmatlab
%      checkboxes.m; showboxes.m; fixboxes.m; writeout.m;
%
%-------------------------------------------------------

%  Written:  March, 1996 by B. Horwitz


clear
close all

whitebg(0,'black')

figure('Color',[1 1 1]*.8,'Name',' ',...
        'NumberTitle','on','Position',[020 20 400 320],'Resize','off');
uicontrol(1,'Style','Frame','Position',[100 250 200 050]);
c='GENERATING STIMULI';
uicontrol(1,'Style','Text', 'Position',[101 255 180 40],...
'String',c,'ForegroundColor',[1 0 0]);

uicontrol(1,'String','MAKE STIMULI',         'Position',[040 200 160 30],...
'CallBack','checkboxes','Interruptible','yes','ForegroundColor',[0 0 1]);
uicontrol(1,'String','SHOW STIMULI',      'Position',[210 200 160 30],...
'CallBack','showboxes','Interruptible','yes','ForegroundColor',[0 0 1]);

uicontrol(1,'String','FIX STIMULI','Position',[040 150 160 30],...
'CallBack','fixboxes','Interruptible','yes','ForegroundColor',[0 0 1]);

uicontrol(1,'String','WRITE STIMULI','Position',[210 150 160 30],...
'CallBack','writeout','Interruptible','yes','ForegroundColor',[0 0 1]);

uicontrol(1,'String','EXIT', 'Position',[165,100,90,30],...
'CallBack','exit','Interruptible','yes','ForegroundColor',[0 0 1]);
