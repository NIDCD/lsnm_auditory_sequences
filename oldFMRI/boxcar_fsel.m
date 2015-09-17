%  boxcar_fsel.m  May 1998
%
%  FORMAT:  
%        y=boxcar_fsel(n,Tinit,T0,T1,T2,T3,T4,T5,T6,T7,T8,tick)
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
%  T4=interval 3 of zero value
%  T5=interval 4 of unit value
%  T6=interval 5 of zero value
%  T7=interval 6 of unit value
%  T8=final zero interval
%
%-----------------------------------------


function y=boxcar2(n,Tinit,T0,T1,T2,T3,T4,T5,T6,T7,T8,tick);

tinit=round(Tinit/tick);
t0=round(T0/tick);
t1=round(T1/tick);
t2=round(T2/tick);
t3=round(T3/tick);
t4=round(T4/tick);
t5=round(T5/tick);
t6=round(T6/tick);
t7=round(T7/tick);
t8=round(T8/tick);

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

for i=1:t5
  y=[y 1];
end

for i=1:t6
  y=[y 0];
end

for i=1:t7
  y=[y 1];
end

for i=1:t8
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
  
