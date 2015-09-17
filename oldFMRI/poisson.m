% poisson.m

function h=poisson(lambda,tau)

if tau~=0
  h=((lambda)^tau)*(exp(-lambda))/factorial(tau);
elseif tau==0
  h=((lambda)^tau)*(exp(-lambda));
end