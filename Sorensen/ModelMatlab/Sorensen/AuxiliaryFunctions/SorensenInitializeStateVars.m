%========================================================================================================================================
% SCRIPT SorensenInitializeStateVars.m: assign the starting values to ALL dependent variables
% Sorensen V01.01.41 20190724 (Gemini 13.01.06, BMLib 10.0.2, Autocoder 02.11.09, coded 24-Jul-2019 16:06:54)
%========================================================================================================================================


global VARMIN VARMAX;

nDepVars = 54;

VARMIN = zeros(55,1);
VARMAX = zeros(55,1);
VARMIN(001) = 0; VARMAX(001) = 1440;
VARMIN(002) = 0; VARMAX(002) = 200;
VARMIN(003) = 0; VARMAX(003) = 200;
VARMIN(004) = 0; VARMAX(004) = 200;
VARMIN(005) = 0; VARMAX(005) = 200;
VARMIN(006) = 0; VARMAX(006) = 200;
VARMIN(007) = 0; VARMAX(007) = 200;
VARMIN(008) = 0; VARMAX(008) = 100;
VARMIN(009) = 0; VARMAX(009) = 200;
VARMIN(010) = 0; VARMAX(010) = 200;
VARMIN(011) = 0; VARMAX(011) = 200;
VARMIN(012) = 0; VARMAX(012) = 200;
VARMIN(013) = 0; VARMAX(013) = 200;
VARMIN(014) = 0; VARMAX(014) = 999;
VARMIN(015) = 0; VARMAX(015) = 999;
VARMIN(016) = 0; VARMAX(016) = 999;
VARMIN(017) = 0; VARMAX(017) = 999;
VARMIN(018) = 0; VARMAX(018) = 999;
VARMIN(019) = 0; VARMAX(019) = 999;
VARMIN(020) = -20; VARMAX(020) = 999;
VARMIN(021) = 0; VARMAX(021) = 999;
VARMIN(022) = 0; VARMAX(022) = 999;
VARMIN(023) = 0; VARMAX(023) = 999;
VARMIN(024) = 0; VARMAX(024) = 999;
VARMIN(025) = 0; VARMAX(025) = 999;
VARMIN(026) = 0; VARMAX(026) = 9999;
VARMIN(027) = 0; VARMAX(027) = 10000;
VARMIN(028) = 0; VARMAX(028) = 9999;
VARMIN(029) = 0; VARMAX(029) = 9999;
VARMIN(030) = 0; VARMAX(030) = 9999;
VARMIN(031) = 0; VARMAX(031) = 99999;
VARMIN(032) = 0; VARMAX(032) = 9999;
VARMIN(033) = 0; VARMAX(033) = 9999;
VARMIN(034) = 0; VARMAX(034) = 9999;
VARMIN(035) = 0; VARMAX(035) = 200;
VARMIN(036) = 0; VARMAX(036) = 999;
VARMIN(037) = 0; VARMAX(037) = 99999;
VARMIN(038) = 0; VARMAX(038) = 999;
VARMIN(039) = 0; VARMAX(039) = 999;
VARMIN(040) = 0; VARMAX(040) = 90000;
VARMIN(041) = 0; VARMAX(041) = 1000;
VARMIN(042) = 0; VARMAX(042) = 1000;
VARMIN(043) = 0; VARMAX(043) = 1e+07;
VARMIN(044) = 0; VARMAX(044) = 99999;
VARMIN(045) = 0; VARMAX(045) = 1000;
VARMIN(046) = 0; VARMAX(046) = 1000;
VARMIN(047) = 0; VARMAX(047) = 1000;
VARMIN(048) = 0; VARMAX(048) = 999;
VARMIN(049) = 0; VARMAX(049) = 200;
VARMIN(050) = 0; VARMAX(050) = 999;
VARMIN(051) = 0; VARMAX(051) = 999;
VARMIN(052) = 0; VARMAX(052) = 10;
VARMIN(053) = 0; VARMAX(053) = 10;
VARMIN(054) = 0; VARMAX(054) = 1000;
VARMIN(055) = 0; VARMAX(055) = 1000;

  GlucBV = GlucBV0;    %   CurrentY(001) 
  GlucBI = GlucBI0;    %   CurrentY(002) 
  GlucH = GlucH0;    %   CurrentY(003) 
  GlucNH = 1.000000000000;    %   CurrentY(004) 
  GlucJ = GlucJ0;    %   CurrentY(005) 
  GlucL = GlucL0;    %   CurrentY(006) 
  GlucNL = 1.000000000000;    %   CurrentY(007) 
  GlucK = GlucK0;    %   CurrentY(008) 
  GlucPV = GlucPV0;    %   CurrentY(009) 
  GlucPI = GlucPI0;    %   CurrentY(010) 
  GlucNPI = 1.000000000000;    %   CurrentY(011) 
  GammaPGU = GammaBPGU;    %   CurrentY(012) 
  MIPGU = MIPGU0;    %   CurrentY(013) 
  GammaHGP = GammaHGP0;    %   CurrentY(014) 
  MIHGP = MIHGP0;    %   CurrentY(015) 
  MIHGPinf = MIHGPinf0;    %   CurrentY(016) 
  MCHGP = MCHGP0;    %   CurrentY(017) 
  MC0HGP = MC0HGP0;    %   CurrentY(018) 
  Fun2 = Func20;    %   CurrentY(019) 
  MGHGP = MGHGP0;    %   CurrentY(020) 
  GammaHGU = GammaHGU0;    %   CurrentY(021) 
  MIHGU = MIHGU0;    %   CurrentY(022) 
  MIHGUinf = MIHGUinf0;    %   CurrentY(023) 
  MGHGU = MGHGU0;    %   CurrentY(024) 
  GammaKGE = GammaKGE0;    %   CurrentY(025) 
  InsuB = InsuB0;    %   CurrentY(026) 
  InsuH = InsuH0;    %   CurrentY(027) 
  InsuNH = 1.000000000000;    %   CurrentY(028) 
  InsuJ = InsuJ0;    %   CurrentY(029) 
  InsuL = InsuL0;    %   CurrentY(030) 
  InsuK = InsuK0;    %   CurrentY(031) 
  InsuPV = InsuPV0;    %   CurrentY(032) 
  InsuPI = InsuPI0;    %   CurrentY(033) 
  InsuNPI = 1.000000000000;    %   CurrentY(034) 
  InsuNL = 1.000000000000;    %   CurrentY(035) 
  GammaLIC = GammaLIC0;    %   CurrentY(036) 
  GammaKIC = GammaKIC0;    %   CurrentY(037) 
  GammaPIC = GammaPIC0;    %   CurrentY(038) 
  GammaPIR = GammaBPIR;    %   CurrentY(039) 
  Potn = Potn0;    %   CurrentY(040) 
  Pinh = Pinh0;    %   CurrentY(041) 
  Rinsu = InitialRinsu0;    %   CurrentY(042) 
  Secr = Secr0;    %   CurrentY(043) 
  SecrN = 1.000000000000;    %   CurrentY(044) 
  Pprp = Pprp0;    %   CurrentY(045) 
  Ptgt = Ptgt0;    %   CurrentY(046) 
  Cgon = Cgon0;    %   CurrentY(047) 
  CgonN = 1.000000000000;    %   CurrentY(048) 
  GammaPCC = GammaPCC0;    %   CurrentY(049) 
  GammaPCR = GammaBPCR;    %   CurrentY(050) 
  MGPCR = MGPCR0;    %   CurrentY(051) 
  MIPCR = MIPCR0;    %   CurrentY(052) 
  GammaIVG = GammaIVG0;    %   CurrentY(053) 
  GammaIVI = GammaIVI0;    %   CurrentY(054) 

CurrentY = zeros(54,1);

SorensenNamedVars2CurrentY;
SorensenForceVars;

%========================================================================================================================================