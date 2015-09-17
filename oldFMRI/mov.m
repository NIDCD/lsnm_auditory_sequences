%  mov.m -- Dec. 1997
%
%  FORMAT:  m=mov(arr, matsize)
%
%  	m=the frames for the moview
%
%  This functions makes all the frams needed for the movie of 
%  neuronal activity (see loadmovie1.m).

%  Written by M. Tagamets

function M = mov(arr, matsize)

nframes = length(arr(:,1));
M = moviein(nframes);
N = sqrt(matsize);
for i=1:N
  ablank(i,1) = 0;
end;
totsize = length(arr(1,:));
emin = min(min(arr));
emax = max(max(arr));
ediff = emax - emin;
a = (arr - emin) ./ ediff * 256 +1;
clear arr;
amap = copper;
bmap = hot;
amap(11:16,:) = bmap(11:16,:);
colormap(jet(256));
for i=1:nframes
  A = ablank;
  for j=1:matsize:totsize
    A = [A reshape(a(i,j:j+matsize-1), N, N) ablank];
  end;
  image(A);
  M(:,i) = getframe;
end;
clear a A;

