%  sumsynact.m -- Jan. 1998
%
%  FORMAT:  sumsynact
%____________________________________________
%
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
%  control, A1, A2, STG and PF
%
%  It saves the resulting matrix to a Matlab file.
%
%  Written:  1-18-98 by B. Horwitz
%  
%  Updated by Antonio Ulloa on Mon Aug 19 11:13:47 EDT 2002
%


load spec_pet.m

synact=petfmri(spec_pet);

save synact synact
