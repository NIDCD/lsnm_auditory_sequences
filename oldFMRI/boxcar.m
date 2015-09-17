%  boxcar.m  Jan. 1998
%
%  FORMAT:  y=boxcar(n,T0,T1,T2,T3,T4,tick)
%____________________________________________
%
%  This program constructs a boxcar-like function of n cycles.
%  This is the basic working memory boxcar.
%  The basic unit is a tick.
%
%  T0=initial zero interval
%  T1=interval 1 of unit value
%  T2=delay (=0 value)
%  T3=inteval 2 of unit value
%  T4=final zero interval
%
%-----------------------------------------


function y=boxcar(n,T0,T1,T2,T3,T4,tick);

t0=round(T0/tick);
t1=round(T1/tick);
t2=round(T2/tick);
t3=round(T3/tick);
t4=round(T4/tick);

y=[];

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
  
