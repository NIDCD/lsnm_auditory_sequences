%  boxcar_mem.m  May 1998
%
%  FORMAT:  y=boxcar_mem(n,Tinit,T0,T1,T2,T3,T4,tick)
%____________________________________________
%
%  This program constructs a boxcar-like function of n cycles 
%  corresponding to the memory part of a working memory task.
%  The basic unit is a tick.
%
%  Tinit=total time for first, discarded trial
%  T0=initial zero interval
%  T1=interval 1 of unit value
%  T2=interval 2 of zero value
%  T3=inteval 3 of unit value
%  T4=final zero interval
%
%-----------------------------------------


function y=boxcar_mem(n,Tinit,T0,T1,T2,T3,T4,tick);

tinit=round(Tinit/tick);
t0=round(T0/tick);
t1=round(T1/tick);
t2=round(T2/tick);
t3=round(T3/tick);
t4=round(T4/tick);

y=[]; y1=[];

for i=1:tinit
  y1=[y1 0];
end
y1=y1';

for i=1:t0
  y=[y 0];
end


for i=1:t1
  y=[y 1];
end

for i=1:t2
  y=[y 0];
end

for i=1:t3
  y=[y 1];
end

for i=1:t4
  y=[y 0];
end

yp=y;
m=n-1;
while m~=0
  y=[y yp];
  m=m-1;
end
y=y';

y=[y1; y];
  
