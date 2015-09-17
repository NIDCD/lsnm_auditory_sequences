%  showboxes.m -- May, 1996
%
%  FORMAT:		showboxes
%_______________________________________________________
%
%  This program shows the stimuli used for the large-scale
%  neural modeling simulation.
%
%  This program calls the following:
%
%  /afs/alw.nih.gov/nia/horwitz/lnsmatlab
%      generate_stim.m;
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

disp(' '); 
filename=input('Enter name of file containing stimuli:  ','s');
disp(' ');
eval(['load ',filename]);

[nr,nc]=size(stimulus);
nstim=nr/9;

disp(' '); 
disp(['The stimulus set contains ',num2str(nstim),' stimuli']);
disp(' ');

kk=0;

for ii=1:nstim

  stim=stimulus(kk+1:kk+9,:);
  contr=controlstim(kk+1:kk+9,:);
  A=fliplr(stim');
  B=fliplr(contr');
  
  disp(' '); 
  disp(['For stimulus # ',num2str(ii),' the stimulus pattern is: ']);
  disp(' ');

  for i=1:idim
    for j=1:idim
     set(h(i,j),'Value',A(i,j));
    end
  end

  disp(' '); disp('Hit any key to continue'); disp(' ');
  pause

  disp(' '); 
  disp(['For stimulus # ',num2str(ii),' the control pattern is: ']);
    for i=1:idim
    for j=1:idim
     set(h(i,j),'Value',B(i,j));
    end
  end

  disp(' ');

  disp(' '); disp('Hit any key to continue'); disp(' ');
  pause

  kk=9+kk;

end

generate_stim
