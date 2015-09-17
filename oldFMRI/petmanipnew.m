%  petmanipnew.m -- 7/28/98
%
%  FORMAT:  petmanipnew
%
%----------------------------------------

workdir=pwd;
petvalues=[];

[nsub,ncols]=size(subjectlist);

for i=1:nsub
  eval(['cd ',subjectlist(i,:)]);
  sumsynact2
  petvalues=[petvalues; intgract];
  eval(['cd ',workdir]);
end

% petvalues=pet values for each subject (row) in each ROI (column)
% These are unnormalized

meanpet_un=mean(petvalues);
sdpet_un=std(petvalues);
cvpet_un=(sdpet_un./meanpet_un)*100;

%  Normalization to each subject's global mean

petsubj=petvalues(:,2:9)';
globalmean=mean(petsubj);
for i=1:nsub
 petsubjn(:,i)=petsubj(:,i)./globalmean(i);
end
petvaluesn=petsubjn';

%  Normalized means, sds,cvs

meanpet=mean(petvaluesn);
sdpet=std(petvaluesn);
cvpet=(sdpet./meanpet)*100;

corrpet=corrcoef(petvaluesn);

disp(' '); disp('Your analysis is complete'); disp(' ');


