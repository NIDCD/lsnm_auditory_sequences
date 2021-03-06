%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% aulist.rs
% This is the script for an experimental trial of auditory experiment
% of auditory list memory
%
% 1 simulation timestep = 4 milliseconds (changed on June/17/03) 
%
% Total time for this trial is 11260 ms (2815 time steps)
% This is: 100 + 420 + 1125 + 100 + 400 + 350 = 2495
%
% The trials in the real experiments are 10500 ms (as of June/17/03)
% This is: 1500 + 4500 + 1500 + 3000, i.e., 2625 time steps.
%
% The output files (*.out) will contain every 5 steps (2495/5=499)
%
% Antonio Ulloa
% National Institutes of Health
% Tue Oct 28 12:46:54 EST 2003
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%---------------------------------------------------------------------
% Write PET every 10 iterations and reset (fMRI)
% The trial duration is 11.26 s. 
%---------------------------------------------------------------------
%WAPet 10               

%---------------------------------------------------------------------
% Pre-stimulus period
%---------------------------------------------------------------------
#include noinp_au.inp
Run 100 		% <----------- 400 ms

%---------------------------------------------------------------------
% First stimulus
%---------------------------------------------------------------------
#include pethiattn.s
#include a_list.inp 	% <----------- 400 ms (100 tsteps)
#include gap.s  % <-----------1000 ms (250 tsteps)
#include b_list.inp  % <----------- 400 ms (100 tsteps)
#include gap.s  % <-----------1000 ms (250 tsteps)
#include c_list.inp  % <----------- 400 ms (100 tsteps)

%---------------------------------------------------------------------
% Interstimulus interval (1125ts --> 4500ms)
%---------------------------------------------------------------------
#include noinp_au.inp
Run 1125               % <----------- 4500 ms

%---------------------------------------------------------------------
% Second stimulus
%---------------------------------------------------------------------
#include pethiattn.s
#include c_list.inp 	% <----------- 400 ms (100 tsteps)

%---------------------------------------------------------------------
% Response interval
%---------------------------------------------------------------------
#include noinp_au.inp
Run 400                 % <----------- 1600 ms

%---------------------------------------------------------------------
% Now reset all
%---------------------------------------------------------------------
#include resetall_au.inp
Run 350  		% <----------- 1400 ms