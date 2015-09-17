%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% auseq.rs
% This is the script for an experimental trial of auditory experiment
%
% 1 simulation timestep = 4 milliseconds (changed on June/17/03) 
%
% Total time for this trial is 7360 ms (1840 time steps)
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
% Interstimulus interval
%---------------------------------------------------------------------
#include noinp_au.inp
Run 100  		% <-----------  400 ms
#include activateReset.inp
Run 200  		% <-----------  800 ms  
#include deactivateReset.inp
Run 100  		% <-----------  400 ms

%---------------------------------------------------------------------
% Second stimulus
%---------------------------------------------------------------------
#include pethiattn.s
#include abc.inp 	% <----------- 1680 ms (420 tsteps)

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
Run 100  		% <----------- 400 ms

%Run 640
%Run 1160


