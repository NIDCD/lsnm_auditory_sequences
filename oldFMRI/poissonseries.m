% poissonseries.m

function h1=poissonseries(T,lambda)

TP=round(T);

for t=0:TP
  h1=[h1; poisson(lambda,t)];
end






