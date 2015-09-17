%  sumsynact1.m -- rev. 6/1998
%
%  FORMAT:  sumsynact1
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
%  ECtl, ICtl, LGN,  EV1h, IV1h, EV1v, IV1v, EV4c, IV4c, 
%  EV4h, IV4h, EV4v, IV4v, ExSs, InSs, ExFrs, InFrs, EFD1,
%  IFD1, EFD2, IFD2, ExFR, InFR
%
%                    eg1h, ig1h, eg1v, ig1v, eg4c, ig4c, 
%  eg4h, ig4h, eg4v, ig4v, exgt, ingt, egfs, igfs , egd1, 
%  igd1, egd2, igd2, egfr, igfr
%
%
%  The program returns a 9-element vector with the fmri or PET (rCBF)
%  activities of the following areas:
%     control, V1, V4, IT/TEO  PF  (right side)
%              V1, V4, IT/TEO  PF  (leftt side)
%
%  It saves the resulting matrix to a Matlab file.

%  Written:  1-18-98 by B. Horwitz

load spec_pet.m

synact=petfmri1(spec_pet);

save synact synact

disp(' '); 
ans=input('If you want the integrated synaptic act. for the entire study, enter 1   ');
if ans==1
  intgract=sum(synact);
  save results synact intgract
end
