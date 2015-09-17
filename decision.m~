%---------------------------------------------------------------
% Mike Chen, July 2001
% This program counts the number of neurons in a given area that fire 
% above a threshold level during the response phase.
%
% The region analyzed in the response population depends on 
% the length of the stimuli and gap used (see below for
% choices).
%
% Updated by Antonio Ulloa on Tue Aug 20 13:57:28 EDT 2002
%---------------------------------------------------------------

range=184:316;      % Use:
                    % 184:348 for ABC vs ABC
                    % 184:316 for ABC vs AB
                    % 184:284 for ABC vs A

% input file to be looked at.
load('exfr.out'  );
load('exfr_a.out');
load('exfr_b.out');

% threshold level.
threshold=0.6;

%for i=range;
%  fr(i,:)=exfr(i,:);
%end
A=zeros(size(exfr));
A(find(exfr>threshold))=1;
B=sum(A);
R1=length(find(B>0))

%for i=range;
%  fr_a(i,:)=exfr_a(i,:);
%end
A=zeros(size(exfr_a));
A(find(exfr_a>threshold))=1;
B=sum(A);
R2=length(find(B>0))

%for i=range;
%  fr_b(i,:)=exfr_b(i,:);
%end
A=zeros(size(exfr_b));
A(find(exfr_b>threshold))=1;
B=sum(A);
R3=length(find(B>0))
