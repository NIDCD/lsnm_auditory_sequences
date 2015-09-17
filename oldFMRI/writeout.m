%  writeout.m -- May 1996
%
%  FORMAT:		writeout
%_________________________________________________
%
%  This program writes out the stimuli into files that can be 
%  entered into Malle Tagamets' c programs for large-scale 
%  simulations.  The ith stimulus of a set is written to a separate file
%  called xxxi.inp; the control stimulus corresponding to the ith 
%  stimulus is written to a file called c_xxxi.inp.
%
%  This program calls the following:
%
%  /afs/alw.nih.gov/nia/horwitz/lnsmatlab
%      padortrunc2.m; generate_stim.m;
%
%-------------------------------------------------------

%  Written:  March, 1996 by B. Horwitz


idim=9;
filename=input('Enter name of stimuli file:  ','s'); disp(' ');

eval(['load ',filename]);

[nr nc]=size(stimulus);
nstim=nr/idim;

c1=['set  (LGNs,  81)        % Turn on LGN,  the Input'];
c2=['Node activation  {ALL 0.0 }'];
c3=['Node activation  {'];
c4=['{'];  
c5=['}']; c5p=['                         }                ']; 

outmat1=[padortrunc2(c1,80);padortrunc2(c4,80);padortrunc2(c2,80);];
outmat1=[outmat1; padortrunc2(c3,80)];

ks=0;

for istim=1:nstim

  stim=stimulus(ks+1:ks+9,:);
  contr=controlstim(ks+1:ks+9,:);
  nel=length(find(stim));
  nelc=length(find(contr));

  nrows5=fix(nel/5); nrows5c=fix(nelc/5);
  nexel=rem(nel,5); nexelc=rem(nelc,5);

  k=1; kc=1;
  for i=1:idim
    for j=1:idim
      if stim(i,j)~=0
        dismat(k,1)=i; dismat(k,2)=j; dismat(k,3)=stim(i,j);
        k=k+1;
      end
      if contr(i,j)~=0
        dismatc(kc,1)=i; dismatc(kc,2)=j; dismatc(kc,3)=contr(i,j);
        kc=kc+1;
      end
    end
  end

  for kk=1:nel
    eval(['el_',num2str(kk),'=''([',num2str(dismat(kk,1)),',',num2str(dismat(kk,2)),']   ',num2str(dismat(kk,3)),')    '';']);
  end
  for kkc=1:nelc
    eval(['elc_',num2str(kkc),'=''([',num2str(dismatc(kkc,1)),',',num2str(dismatc(kkc,2)),']   ',num2str(dismatc(kkc,3)),')    '';']);
  end


  kk=1; kkc=1;
  outmat=outmat1; outmatc=outmat1;

  for ii=1:nrows5
    line=[];
    for jj=1:5
      eval(['line=[line     el_',num2str(kk),'];']);
      kk=kk+1;
    end
    outmat=[outmat; padortrunc2(line,80)];
  end

  line=[];
  for jj=1:nexel
    eval(['line=[line     el_',num2str(kk),'];']);
    kk=kk+1;
  end 

  for iic=1:nrows5c
    linec=[];
    for jjc=1:5
      eval(['linec=[linec     elc_',num2str(kkc),'];']);
      kkc=kkc+1;
    end
    outmatc=[outmatc; padortrunc2(linec,80)];
  end

  linec=[];
  for jjc=1:nexelc
    eval(['linec=[linec     elc_',num2str(kkc),'];']);
    kkc=kkc+1;
  end 


  outmat=[outmat; padortrunc2(line,80)];
  outmat=[outmat; padortrunc2(c5p,80); padortrunc2(c5,80)];
  outmatc=[outmatc; padortrunc2(linec,80)];
  outmatc=[outmatc; padortrunc2(c5p,80); padortrunc2(c5,80)];

  [nmat,nc1]=size(outmat);
  [nmatc,nc2]=size(outmatc);
  fout=[filename,num2str(istim),'.inp'];
  foutc=['c_',filename,num2str(istim),'.inp'];

  fid=fopen(fout,'w');
  for imat=1:nmat
    fprintf(fid,'%80s\n',outmat(imat,:));
  end
  fclose(fid);

  fid=fopen(foutc,'w');
  for imat=1:nmatc
    fprintf(fid,'%80s\n',outmatc(imat,:));
  end
  fclose(fid);

  clear outmat
  clear outmatc

  ks=ks+9;

end

disp(' '); disp('Writing out is complete; choose another option'); disp(' ');

generate_stim
