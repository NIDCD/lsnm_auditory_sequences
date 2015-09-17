%  mov3.m -- rev. 6/98
%  changed reshape to its transpose because matlab
%  converts vector into matrix in column-major form while our
%  data were written in row major form

%  FORMAT:  m=mov3(arr1,arr2, matsize);
%
%  	m=the frames for the moview
%
%  This functions makes all the frams needed for the movie of 
%  neuronal activity (see loadmovie3.m).

%  Modified from M. Tagamets' mov.m

function M = mov3(arr1, arr2, matsize)

nframes = length(arr1(:,1));
M = moviein(nframes);
N = sqrt(matsize);
ablank = zeros(N,1);
mm = length(arr1(1,:))/matsize;
mm = mm .*(N+1);
bblank = zeros(1,mm);

totsize = length(arr1(1,:));
arr = [arr1;arr2];
emin = min(min(arr));
emax = max(max(arr));
clear arr;
ediff = emax - emin;
a = (arr1 - emin) ./ ediff * 100 +1;
b = (arr2 - emin) ./ ediff * 100 +1;
clear arr1;
clear arr2;

colormap(jet(128));
for i=1:nframes
  A1= [];
  B1= [];
  for j=1:matsize:totsize
    A1 = [A1 (reshape(a(i,j:j+matsize-1), N, N))' ablank];
    B1 = [B1 (reshape(b(i,j:j+matsize-1), N, N))' ablank];
  end;
  C1=[A1;bblank;B1];
  image(C1);
  M(:,i) = getframe;
end;
clear a b A1 B1 C1 ablank bblank

