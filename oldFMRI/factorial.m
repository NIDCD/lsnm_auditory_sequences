function f=factorial(n)
% Would you believe factorial n?
% n - vector
f=cumprod(1:max(n));
f=f(n);
