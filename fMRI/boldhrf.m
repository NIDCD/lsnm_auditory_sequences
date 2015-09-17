function h = boldhrf(x, tau, n, delta)
% h = boldhrf(x, tau, n, delta)
%
% Gives the impulse response (convolution kernel) of the gamma function
% appoximating the BOLD response (a.k.a.  "the Boynton model").
% x     : Array of time points at which to specify the HRF, e.g. 0:TR:20
% tau   : The time constant, default 1.25
% n     : The phase delay (integer), default 3
% delta : The pure delay, default 2.5

% assign default values
if(nargin < 4)
    delta = 2.5;
end
if(nargin < 3)
    n = 3;
end
if(nargin < 2)
    tau = 1.25;
end

x = (x(:) - delta)./tau; %x = x(:)./tau - delta; % scale by time constant
                                                 % and subtract pure delay
x(find(x<0)) = 0; % zero negative values

numerator = tau * factorial(n-1);

h = (x.^(n-1) .* exp(-x)) ./ numerator;
