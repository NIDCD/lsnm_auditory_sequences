%  fixboxes.m  -- May, 1996
%
%  FORMAT:		fixboxes
%_________________________________________________
%
%  This program allows one to replace one stimulus with another, or 
%  else add one or more stimuli to the set.  For each stimulus changed
%  or added, a new control stimulus is generated.
%
%  This program calls the following:
%
%  /afs/alw.nih.gov/nia/horwitz/lnsmatlab
%	generate_stim.m;
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
  
  disp(' '); 
  disp(['For stimulus # ',num2str(ii),' the stimulus pattern is: ']);
  disp(' ');

  for i=1:idim
    for j=1:idim
     set(h(i,j),'Value',A(i,j));
    end
  end

  disp(' '); 
  ans=menu('Do you wish to change this pattern?','Yes-replace','Yes-Append as new pattern','No'); 
  disp(' ');

  if ans==1
    disp('Change figure -- When finished, hit any key to continue'); 
    disp(' ');
    pause
    C=zeros(idim,idim);
    for i=1:idim
      for j=1:idim
       C(i,j)=get(h(i,j),'Value');
      end
    end
    stimulus(kk+1:kk+9,:)=flipud(C');

   %  Changing control stimulus

    AA=rand(idim,idim); 
    AAorig=AA;

    BB=ones(idim,idim);
    nel=idim*idim;

    numones=length(find(C));

   G=sort(AA(:));
   Gf=flipud(G);

   thres=Gf(numones);

   CC=find(AA>=thres);

   AA(CC)=BB(CC);

   newimage=AA==1;
   controlstim(kk+1:kk+9,:)=newimage;

elseif ans==2

    disp('Change figure -- When finished, hit any key to continue'); 
    disp(' ');
    pause
    C=zeros(idim,idim);
    for i=1:idim
      for j=1:idim
       C(i,j)=get(h(i,j),'Value');
      end
    end
    stimulus=[stimulus; flipud(C')];

    %  GENERATE CONTROL STIMULUS TO STIMULUS 
    %  JUST PRODUCED


    AA=rand(idim,idim); 
    AAorig=AA;

    BB=ones(idim,idim);
    nel=idim*idim;

    numones=length(find(C));

   G=sort(AA(:));
   Gf=flipud(G);

   thres=Gf(numones);

   CC=find(AA>=thres);

   AA(CC)=BB(CC);

   newimage=AA==1;

   controlstim=[controlstim; newimage];


  end

  kk=9+kk;

end

name=input('Enter filename for stimuli (CR if original name is ok):  ','s');

if isempty(name)==1
  name=filename;
end

eval(['save ' ,name,' stimulus controlstim']);

disp(' '); disp('Job is complete; choose another option'); disp(' ');

generate_stim

