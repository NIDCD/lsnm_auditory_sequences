% poisson.m
% Also, HRF (Boynton, used in BVQX):

function h=poisson(lambda,tau)

%delta=2.5;
%tau2=1.25;
%h=((tau-delta)./tau2).^2.*exp(-1.*(tau-delta)./tau2);

if tau~=0
  h=((lambda)^tau)*(exp(-lambda))/factorial(tau);
elseif tau==0
  h=((lambda)^tau)*(exp(-lambda));
end
