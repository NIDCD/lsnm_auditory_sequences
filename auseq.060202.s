%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% auseq.s
%
% Specificies the network structure 
%
% Antonio Ulloa
%
% Wed Feb 20 11:16:21 EST 2002
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%-----------------------------------------------------------------
% Define attention module
%-----------------------------------------------------------------
set(Atts,1) {
  Write 5
  ActRule: Clamp
  OutputRule: SumOut
}
%-----------------------------------------------------------------
 
%-----------------------------------------------------------------
% Define a control module (excitatory)
%-----------------------------------------------------------------
set(ECtl,81) {
  Write 0
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.3 ) (DELTA  0.5 ) (DECAY  0.5 ) 
	       (K 8.5 ) (NOISE  0.2)}
  Node Activation { ALL 0.2 }
}
%-----------------------------------------------------------------
 
%-----------------------------------------------------------------
% Define a control module (inhibitory)
%-----------------------------------------------------------------
set(ICtl,81) {
  Write 0
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.1 ) (DELTA  0.5 ) (DECAY  0.5 ) 
	       (K 19 ) (NOISE  0.2)}
  Node Activation { ALL 0.2 }
}
%-----------------------------------------------------------------
 
%-----------------------------------------------------------------
% Define MGN module
%-----------------------------------------------------------------
set(MGNs,81) {
  Write 5
  Topology: Rect(1,81)
  ActRule: Clamp
  OutputRule: SumOut
  Node Activation { ALL 0.01 }
}
%-----------------------------------------------------------------
 
%-----------------------------------------------------------------
% Define down-selective Ai module (excitory and inhibitory)
%-----------------------------------------------------------------
set(EA1d,81) {
  Write 5
  Topolog1: Rect(1,81)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.3 ) (DELTA .7) (DECAY .7) 
	       (K 8 ) (NOISE  0.05)}  
  Node Activation { ALL 0.05 }
}

set(IA1d,81) {
  Write 0
  Topology: Rect(1,81)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.2 ) (DELTA  2 ) (DECAY 1) 
	       (K 17 ) (NOISE  0.05)}
  Node Activation { ALL 0.05 }
}
%-----------------------------------------------------------------
 
%-----------------------------------------------------------------
% Define up-selective Ai module (excitatory and inhibitory)
%-----------------------------------------------------------------
set(EA1u,81) {
  Write 5
  Topolog1: Rect(1,81)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.3 ) (DELTA .7) (DECAY .7 ) 
	       (K 8 ) (NOISE  0.05)} 
  Node Activation { ALL 0.05 }
}

set(IA1u,81) {
  Write 0
  Topology: Rect(1,81)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.2 ) (DELTA  2  ) (DECAY 1 ) 
	       (K 17 ) (NOISE  0.05)}
  Node Activation { ALL 0.05 }
}
%-----------------------------------------------------------------

%-----------------------------------------------------------------
% Define down-selective Aii module (excitatory and inhibitory)
%-----------------------------------------------------------------
set(EA2d,81) {
  Write 5
  Topology: Rect(1,81)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.35 ) (DELTA  1.7) (DECAY  1.7 ) 
	       (K 9 ) (NOISE  0.10)}
  Node Activation { ALL 0.1 }
}

set(IA2d,81) {
  Write 0
  Topology: Rect(1,81)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.35 ) (DELTA  .2 ) (DECAY  1.6 ) 
	       (K 18 ) (NOISE  0.1)}
  Node Activation { ALL 0.1 }
}
%-----------------------------------------------------------------
	 
%-----------------------------------------------------------------
% Define up-selective Aii module (excitatory and inhibitory) 
%-----------------------------------------------------------------
set(EA2u,81) {
  Write 5
  Topology: Rect(1,81)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.35 ) (DELTA 1.7  ) (DECAY  1.7 ) 
	       (K 9 ) (NOISE  0.10)}
  Node Activation { ALL 0.1 }
}

set(IA2u,81) {
  Write 0
  Topology: Rect(1,81)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.35 ) (DELTA  .2 ) (DECAY  1.6 ) 
	       (K 18 ) (NOISE  0.1)}
  Node Activation { ALL 0.1 }
}
%-----------------------------------------------------------------
 
%-----------------------------------------------------------------
% Define contour-selective Aii module (excitory and inhibitory)
%-----------------------------------------------------------------
set(EA2c,81) {
  Write 5
  Topology: Rect(1,81)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.34 ) (DELTA  1.3 ) (DECAY  1.3 ) 
	       (K 8 ) (NOISE  0.10)}
  Node Activation { ALL 0.1 }
}

set(IA2c,81) {
  Write 0
  Topology: Rect(1,81)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.3 ) (DELTA  .2 ) (DECAY  .8 ) 
	       (K 17 ) (NOISE  0.1)} 
  Node Activation { ALL 0.1 }
}
%-----------------------------------------------------------------
	  
%-----------------------------------------------------------------
% Define STG module (excitatory and inhibitory)
%-----------------------------------------------------------------
set(ESTG,81) {
  Write 5
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.35) (DELTA  .8 ) (DECAY  1.2 ) 
	       (K 7.5 ) (NOISE  0.1)}
  Node Activation { ALL 0.1 }
}

set(ISTG,81) {
  Write 0
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut 
  Parameters: {(THRESH  0.3  ) (DELTA  1 ) (DECAY  1 ) 
	       (K 19 ) (NOISE  .1)}
  Node Activation { ALL 0.1 }
}
%-----------------------------------------------------------------
 
%-----------------------------------------------------------------
% Define cue-selective PFC modules (excitatory and inhibitory) 
%-----------------------------------------------------------------
set(ExFs,81) {
  Write 5
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.3) (DELTA  .5 ) (DECAY  .5 ) 
	       (K 9 ) (NOISE  0.05)}
  Node Activation { ALL 0.2 }
}

set(ExFs_a,81) {
  Write 5
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.3) (DELTA  .5 ) (DECAY  .5 ) 
	       (K 9 ) (NOISE  0.05)}
  Node Activation { ALL 0.2 }
}

set(ExFs_b,81) {
  Write 5
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.3) (DELTA  .5 ) (DECAY  .5 ) 
	       (K 9 ) (NOISE  0.05)}
  Node Activation { ALL 0.2 }
}

set(InFs,81) {
  Write 0
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.1  ) (DELTA  .5 ) (DECAY  .5 ) 
	       (K 20 ) (NOISE  0.05)}
  Node Activation { ALL 0.2 }
}

set(InFs_a,81) {
  Write 0
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.1  ) (DELTA  .5 ) (DECAY  .5 ) 
	       (K 20 ) (NOISE  0.05)}
  Node Activation { ALL 0.2 }
}

set(InFs_b,81) {
  Write 0
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.1  ) (DELTA  .5 ) (DECAY  .5 ) 
	       (K 20 ) (NOISE  0.05)}
  Node Activation { ALL 0.2 }
}
%-----------------------------------------------------------------
 
%-----------------------------------------------------------------
% Define delay-selective PFC module (excitatory and inhibitory)
%-----------------------------------------------------------------
set(EFD1,81) {
  Write 5
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.3) (DELTA  .5 ) (DECAY  .5 ) 
	       (K 9 ) (NOISE  0.05)}
  Node Activation { ALL 0.2 }
}

set(EFD1_a,81) {
  Write 5
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.3) (DELTA  .5 ) (DECAY  .5 ) 
	       (K 9 ) (NOISE  0.05)}
  Node Activation { ALL 0.2 }
}

set(EFD1_b,81) {
  Write 5
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.3) (DELTA  .5 ) (DECAY  .5 ) 
	       (K 9 ) (NOISE  0.05)}
  Node Activation { ALL 0.2 }
}

set(IFD1,81) {
  Write 0
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.1  ) (DELTA  0.5 ) (DECAY  0.5 ) 
	       (K 20 ) (NOISE  0.05)}
  Node Activation { ALL 0.2 }
}

set(IFD1_a,81) {
  Write 0
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.1  ) (DELTA  0.5 ) (DECAY  0.5 ) 
	       (K 20 ) (NOISE  0.05)}
  Node Activation { ALL 0.2 }
}
	
set(IFD1_b,81) {
  Write 0
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.1  ) (DELTA  0.5 ) (DECAY  0.5 ) 
	       (K 20 ) (NOISE  0.05)}
  Node Activation { ALL 0.2 }
}
%-----------------------------------------------------------------
 
%-----------------------------------------------------------------
% Define cue-and-delay-selective PFC module (excitat. & inhibit.)
%-----------------------------------------------------------------
set(EFD2,81) {
  Write 5
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.3) (DELTA  .5 ) (DECAY  .5 ) 
	       (K 9 ) (NOISE  0.05)}
  Node Activation { ALL 0.2 }
}

set(EFD2_a,81) {
  Write 5
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.3) (DELTA  .5 ) (DECAY  .5 ) 
	       (K 9 ) (NOISE  0.05)}
  Node Activation { ALL 0.2 }
}

set(EFD2_b,81) {
  Write 5
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.3) (DELTA  .5 ) (DECAY  .5 ) 
	       (K 9 ) (NOISE  0.05)}
  Node Activation { ALL 0.2 }
}

set(IFD2,81) {
  Write 0
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.1  ) (DELTA  0.5 ) (DECAY  0.5 ) 
	       (K 20 ) (NOISE  0.05)}
  Node Activation { ALL 0.2 }
}

set(IFD2_a,81) {
  Write 0
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.1  ) (DELTA  0.5 ) (DECAY  0.5 ) 
	       (K 20 ) (NOISE  0.05)}
  Node Activation { ALL 0.2 }
}

set(IFD2_b,81) {
  Write 0
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.1  ) (DELTA  0.5 ) (DECAY  0.5 ) 
	       (K 20 ) (NOISE  0.05)}
  Node Activation { ALL 0.2 }
}
%-----------------------------------------------------------------
 
%-----------------------------------------------------------------
% Define response PFC module (excitatory and inhibitory) 
%-----------------------------------------------------------------
set(ExFR,81) {
  Write 5
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.3) (DELTA  .89 ) (DECAY  1 ) 
	       (K 9 ) (NOISE  0.05)}
  Node Activation { ALL 0.2 }
}

set(ExFR_a,81) {
  Write 5
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.3) (DELTA  .89 ) (DECAY  1 ) 
	       (K 9 ) (NOISE  0.05)}
  Node Activation { ALL 0.2 }
}

set(ExFR_b,81) {
  Write 5
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.3) (DELTA  .89 ) (DECAY  1 ) 
	       (K 9 ) (NOISE  0.05)}
  Node Activation { ALL 0.2 }
}

set(InFR,81) {
  Write 0
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.1  ) (DELTA  0.5 ) (DECAY  0.5 ) 
	       (K 20 ) (NOISE  0.05)}
  Node Activation { ALL 0.2}
}

set(InFR_a,81) {
  Write 0
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.1  ) (DELTA  0.5 ) (DECAY  0.5 ) 
	       (K 20 ) (NOISE  0.05)}
  Node Activation { ALL 0.2}
}

set(InFR_b,81) {
  Write 0
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.1  ) (DELTA  0.5 ) (DECAY  0.5 ) 
	       (K 20 ) (NOISE  0.05)}
  Node Activation { ALL 0.2}
}
%-----------------------------------------------------------------

%-----------------------------------------------------------------
% Define attention module 
%-----------------------------------------------------------------
set(AttV,1) {
  Write 5 
  ActRule: Clamp
  OutputRule: SumOut
  Node Activation { ALL 1.0 }
}
%-----------------------------------------------------------------

%-----------------------------------------------------------------
% Define gating module 
%-----------------------------------------------------------------
set(ExGa,81) {
  Write 5
  Topology: Rect(9,9)
  ActRule: DiffSig 
  OutputRule: SumOut
  Parameters: {(THRESH  1) (DELTA  .5 ) (DECAY  .5 ) 
	       (K 9 ) (NOISE  0.0)}
  Node Activation { ALL 0.0 }
}

set(ExGa_a,81) {
  Write 5
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  1) (DELTA  .5 ) (DECAY  .5 ) 
	       (K 9 ) (NOISE  0.0)}
  Node Activation { ALL 1.0 }
}

set(ExGa_b,81) {
  Write 5
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  1) (DELTA  .5 ) (DECAY  .5 ) 
	       (K 9 ) (NOISE  0.0)}
  Node Activation { ALL 1.0 }
}
	
set(InGa,81) {
  Write 5
  Topology: Rect(9,9)
  ActRule: DiffSig 
  OutputRule: SumOut
  Parameters: {(THRESH  0.1) (DELTA  .5 ) (DECAY  .5 ) 
	       (K 9 ) (NOISE  0.0)}
  Node Activation { ALL 0.0 }
}

set(InGa_a,81) {
  Write 5
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.1) (DELTA  .5 ) (DECAY  .5 ) 
	       (K 9 ) (NOISE  0.0)}
  Node Activation { ALL 0.0 }
}

set(InGa_b,81) {
  Write 5
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Parameters: {(THRESH  0.1) (DELTA  .5 ) (DECAY  .5 ) 
	       (K 9 ) (NOISE  0.0)}
  Node Activation { ALL 0.0 }
}
%-----------------------------------------------------------------
 
%-----------------------------------------------------------------
% Define gradient mechanism 
%-----------------------------------------------------------------
set(ExGr,81) {
  Write 5
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Node Activation { ALL 0.0 }
}

set(ExGr_a,81) {
  Write 5
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Node Activation { ALL 0.0 }
}	

set(ExGr_b,81) {
  Write 5
  Topology: Rect(9,9)
  ActRule: DiffSig
  OutputRule: SumOut
  Node Activation { ALL 0.0 }
}	
%-----------------------------------------------------------------
	
%-----------------------------------------------------------------
% Define reset mechanism 
%-----------------------------------------------------------------
set(InRe,81) {
  Write 5 
  Topology: Rect(9,9)
  ActRule: Clamp
  OutputRule: SumOut
  Node Activation { ALL 0.0 }
}

set(InRe_a,81) {
  Write 5 
  Topology: Rect(9,9)
  ActRule: Clamp
  OutputRule: SumOut
  Node Activation { ALL 0.0 }
}

set(InRe_b,81) {
  Write 5 
  Topology: Rect(9,9)
  ActRule: Clamp
  OutputRule: SumOut
  Node Activation { ALL 0.0 }
}
%-----------------------------------------------------------------

%-----------------------------------------------------------------
% Define file containing weights among modules 
%-----------------------------------------------------------------
#include ausimweightlist.txt
%-----------------------------------------------------------------

%-----------------------------------------------------------------
% Define file containing experimental sequence script
%-----------------------------------------------------------------
#include auseq.rs
%-----------------------------------------------------------------
