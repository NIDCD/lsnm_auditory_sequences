%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% auseq.rs
% This is the script for an experimental trial of auditory experiment
%
% 1 simulation timestep = 4 milliseconds (changed on June/17/03) 
%
% Total time for this trial is 11260 ms (2815 time steps)
% This is: 100 + 420 + 1125 + 420 + 400 + 350 = 2815
%
% The trials in the real experiments are 10500 ms (as of June/17/03)
% This is: 1500 + 4500 + 1500 + 3000, i.e., 2625 time steps.
%
% The output files (*.out) will contain every 5 steps (1840/5=368)
%
% Antonio Ulloa
% National Institutes of Health
% Thu Feb 14 13:53:30 EST 2002
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%---------------------------------------------------------------------
% Write PET every 10 iterations and reset (fMRI)
% The trial duration is 11.26 s. 
%---------------------------------------------------------------------
WAPet 10               

%---------------------------------------------------------------------
% Pre-stimulus period
%---------------------------------------------------------------------
#include noinp_au.inp
Run 100 		% <----------- 400 ms

%---------------------------------------------------------------------
% First stimulus
%---------------------------------------------------------------------
#include pethiattn.s
#include abc.inp 	% <----------- 1680 ms (420 tsteps)

%---------------------------------------------------------------------
% Interstimulus interval (1125ts --> 4500ms)
%---------------------------------------------------------------------
#include noinp_au.inp
Run 100  		% <-----------  400 ms
#include resetgating.inp
%#include activateReset.inp
Run 200  		% <-----------  800 ms  
%#include deactivateReset.inp
Run 825  		% <-----------  4800 ms

%Run 160
%Run 320

%---------------------------------------------------------------------
% Second stimulus
%---------------------------------------------------------------------
#include pethiattn.s
#include aaa.inp 	% <----------- 1680 ms (420 tsteps)

%---------------------------------------------------------------------
% Response interval
%---------------------------------------------------------------------
#include noinp_au.inp
Run 100  		% <-----------  400 ms
Run 200  		% <-----------  800 ms
Run 100  		% <-----------  400 ms

%---------------------------------------------------------------------
% Now reset all
%---------------------------------------------------------------------
#include resetall_au.inp
Run 350  		% <----------- 1400 ms

%Run 160
%Run 320



