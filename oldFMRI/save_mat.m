%  save_mat.m -- May, 1996
%
%  FORMAT:		save_mat
%________________________________________________
%
%  This program produces a control stimulus for one generated 
%  by checkboxes, and saves both in a matlab file.
%
%  This program calls the following:
%
%  /afs/alw.nih.gov/nia/horwitz/lnsmatlab
%      checkboxes.m;
%
%-------------------------------------------------------

%  Written:  March, 1996 by B. Horwitz

name=get(h1,'String');

eval(['if exist(''',name,'.mat'')==2;load ',name,'; else; stimulus=[]; controlstim=[]; end;']);

stimulus=[stimulus; B];


%  GENERATE CONTROL STIMULUS TO STIMULUS 
%  JUST PRODUCED


AA=rand(idim,idim); 
AAorig=AA;

BB=ones(idim,idim);
nel=idim*idim;

numones=length(find(B));

G=sort(AA(:));
Gf=flipud(G);

thres=Gf(numones);

C=find(AA>=thres);

AA(C)=BB(C);

newimage=AA==1;

controlstim=[controlstim; newimage];

eval(['save ' ,name,' stimulus controlstim']);

disp(' '); 
ans=menu('Do you want to generate another stimulus?','Yes','No');

if ans==1
  checkboxes
else
  disp(' '); disp('Job is complete; choose another option'); disp(' ');
  generate_stim
end