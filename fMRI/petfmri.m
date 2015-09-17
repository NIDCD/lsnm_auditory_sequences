%-----------------------------------------------------------------
%  petfmri.m -- Dec. 1997
%
%  Updated: Thu Aug 15 13:12:19 EDT 2002
%
%  FORMAT:  p=petfmri(m)
%____________________________________________
%
%	p=vector (rows=timepoints, columns=regions)
%	m=matrix of values from spec_pet.m
%
%  This function takes a matrix of the simulated fMRI (or PET) data
%  that corresponds to a series of writeouts, in which
%  each row corresponds to the time-integrated value (since the previous
%  writeout) of the sum of the abs. values of the excitatory and 
%  inhibitory synaptic activity onto each neuronal population (in the
%  following order):  
%
%  Atts,
%  ECtl, ICtl, 
%  MGN, 
%  EA1d, IA1d, EA1u, IA1u, 
%  EA2d, IA2d, EA2u, IA2u, EA2c, IA2c,  
%  ESTG, ISTG,
%  ExFS, ExFS_a, ExFS_b, InFS, InFS_a, InFS_b,
%  EFD1, EFD1_a, EFD1_b, IFD1, IFD1_a, IFD1_b,
%  EFD2, EFD2_a, EDD2_b, IFD2, IFD2_a, IFD2_b,
%  ExFR, ExFR_a, ExFR_b, InFR, InFR_a, InFR_b,
%  Attv,
%  ExGA, ExGA_a, ExGA_b, InGA, InGA_a, InGA_b,
%  ExGR, ExGR_a, ExGR_b, InGR, InGR_a, InGR_b,
%  ExRG, ExRG_a, ExRG_b, InRG, InRG_a, InRG_b,
%  ExRE.
% 
%
%  The function returns a 5-element vector with the fmri (rCBF) activities
%  of the following areas:
%  Ai, Aii, ST, PF, and Gating area.
%
%  Written:  12-15-97 by B. Horwitz
%
%  Modified from pet.m (written by M. Tagamets)
%
%  Modified by Antonio Ulloa on Thu Aug 15 13:12:19 EDT 2002
%----------------------------------------------------------------

function p = petfmri(m)

s = size(m);
rws = s(1);			% Total rows in matrix

for i=1:rws
   p(i,1) = sum(m(i, 5: 8));    % Ai
   p(i,2) = sum(m(i, 9:14));	% Aii
   p(i,3) = sum(m(i,15:16));    % ST
   p(i,4) = sum(m(i,17:34)) +...
            sum(m(i,42:59));    % PFC                
   p(i,5) = sum(m(i,41));       % Gating
end
