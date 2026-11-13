%========================================================================================================================================
% SCRIPT SorensenDetermineParameters.m: compute the values of determined from free parameters
% Sorensen V01.01.41 20190724 (Gemini 13.01.06, BMLib 10.0.2, Autocoder 02.11.09, coded 24-Jul-2019 16:06:54)
%========================================================================================================================================


%  Parameter Tzero                (bigtheta 001) is not determined
%  Parameter Tend                 (bigtheta 002) is not determined
%  Parameter Tdelta               (bigtheta 003) is not determined
%  Parameter QfloGB               (bigtheta 004) is not determined
%  Parameter VolGBV               (bigtheta 005) is not determined
%  Parameter VolBI                (bigtheta 006) is not determined
%  Parameter TdifB                (bigtheta 007) is not determined
%  Parameter GlucH0               (bigtheta 008) is not determined
%  Parameter GammaBGU             (bigtheta 009) is not determined
%  Parameter QfloGL               (bigtheta 010) is not determined
%  Parameter QfloGK               (bigtheta 011) is not determined
%  Parameter QfloGP               (bigtheta 012) is not determined
%  Parameter QfloGH               (bigtheta 013) is not determined
%  Parameter GammaRBCU            (bigtheta 014) is not determined
%  Parameter VolGH                (bigtheta 015) is not determined
%  Parameter QfloGJ               (bigtheta 016) is not determined
%  Parameter VolGJ                (bigtheta 017) is not determined
%  Parameter GammaJGU             (bigtheta 018) is not determined
%  Parameter QfloGA               (bigtheta 019) is not determined
%  Parameter VolGL                (bigtheta 020) is not determined
%  Parameter VolGK                (bigtheta 021) is not determined
%  Parameter VolGPV               (bigtheta 022) is not determined
%  Parameter VolPI                (bigtheta 023) is not determined
%  Parameter TdifGP               (bigtheta 024) is not determined
%  Parameter GammaBPGU            (bigtheta 025) is not determined
%  Parameter beta0PGU             (bigtheta 026) is not determined
%  Parameter beta1PGU             (bigtheta 027) is not determined
%  Parameter beta2PGU             (bigtheta 028) is not determined
%  Parameter beta3PGU             (bigtheta 029) is not determined
%  Parameter beta0HGP             (bigtheta 030) is not determined
%  Parameter beta1HGP             (bigtheta 031) is not determined
%  Parameter tauCgon              (bigtheta 032) is not determined
%  Parameter beta2HGP             (bigtheta 033) is not determined
%  Parameter beta3HGP             (bigtheta 034) is not determined
%  Parameter beta4HGP             (bigtheta 035) is not determined
%  Parameter beta5HGP             (bigtheta 036) is not determined
%  Parameter tauInsu              (bigtheta 037) is not determined
%  Parameter beta6HGP             (bigtheta 038) is not determined
%  Parameter beta7HGP             (bigtheta 039) is not determined
%  Parameter beta8HGP             (bigtheta 040) is not determined
%  Parameter beta9HGP             (bigtheta 041) is not determined
%  Parameter GammaHGP0            (bigtheta 042) is not determined
%  Parameter beta0HGU             (bigtheta 043) is not determined
%  Parameter beta1HGU             (bigtheta 044) is not determined
%  Parameter beta2HGU             (bigtheta 045) is not determined
%  Parameter beta3HGU             (bigtheta 046) is not determined
%  Parameter beta4HGU             (bigtheta 047) is not determined
%  Parameter beta5HGU             (bigtheta 048) is not determined
%  Parameter GammaHGU0            (bigtheta 049) is not determined
%  Parameter beta0KGE             (bigtheta 050) is not determined
%  Parameter beta1KGE             (bigtheta 051) is not determined
%  Parameter beta2KGE             (bigtheta 052) is not determined
%  Parameter beta3KGE             (bigtheta 053) is not determined
%  Parameter beta4KGE             (bigtheta 054) is not determined
%  Parameter beta5KGE             (bigtheta 055) is not determined
%  Parameter QfloIB               (bigtheta 056) is not determined
%  Parameter VolIB                (bigtheta 057) is not determined
%  Parameter VolIH                (bigtheta 058) is not determined
%  Parameter QfloIL               (bigtheta 059) is not determined
%  Parameter QfloIK               (bigtheta 060) is not determined
%  Parameter QfloIP               (bigtheta 061) is not determined
%  Parameter QfloIH               (bigtheta 062) is not determined
%  Parameter VolIJ                (bigtheta 063) is not determined
%  Parameter QfloIJ               (bigtheta 064) is not determined
%  Parameter VolIL                (bigtheta 065) is not determined
%  Parameter QfloIA               (bigtheta 066) is not determined
%  Parameter FracLIC              (bigtheta 067) is not determined
%  Parameter FracKIC              (bigtheta 068) is not determined
%  Parameter VolIK                (bigtheta 069) is not determined
%  Parameter VolIPV               (bigtheta 070) is not determined
%  Parameter TdifIP               (bigtheta 071) is not determined
%  Parameter FracPIC              (bigtheta 072) is not determined
%  Parameter beta1PIR             (bigtheta 073) is not determined
%  Parameter beta2PIR             (bigtheta 074) is not determined
%  Parameter beta3PIR             (bigtheta 075) is not determined
%  Parameter beta4PIR             (bigtheta 076) is not determined
%  Parameter beta5PIR             (bigtheta 077) is not determined
%  Parameter KappaRinsu           (bigtheta 078) is not determined
%  Parameter Rinsu0               (bigtheta 079) is not determined
%  Parameter KappaRinsuPotn       (bigtheta 080) is not determined
%  Parameter KappaPotnPtgt        (bigtheta 081) is not determined
%  Parameter KappaPinhPrp         (bigtheta 082) is not determined
%  Parameter EMME1                (bigtheta 083) is not determined
%  Parameter EMME2                (bigtheta 084) is not determined
%  Parameter InsuPV0              (bigtheta 085) is not determined
%  Parameter Cgon0                (bigtheta 086) is not determined
%  Parameter GammaMCC             (bigtheta 087) is not determined
%  Parameter VolC                 (bigtheta 088) is not determined
%  Parameter beta0PCR             (bigtheta 089) is not determined
%  Parameter beta1PCR             (bigtheta 090) is not determined
%  Parameter beta2PCR             (bigtheta 091) is not determined
%  Parameter beta3PCR             (bigtheta 092) is not determined
%  Parameter beta4PCR             (bigtheta 093) is not determined
%  Parameter beta5PCR             (bigtheta 094) is not determined
%  Parameter beta6PCR             (bigtheta 095) is not determined
%  Parameter beta7PCR             (bigtheta 096) is not determined
%  Parameter Func20               (bigtheta 097) is not determined
%  Parameter GammaIVG0            (bigtheta 098) is not determined
%  Parameter GammaIVGin           (bigtheta 099) is not determined
%  Parameter TimeIVG              (bigtheta 100) is not determined
%  Parameter TimeIVGend           (bigtheta 101) is not determined
%  Parameter GammaIVI0            (bigtheta 102) is not determined
%  Parameter GammaIVIin           (bigtheta 103) is not determined
%  Parameter TimeIVI              (bigtheta 104) is not determined
%  Parameter TimeIVIend           (bigtheta 105) is not determined
   InsuH0 = InsuPV0/(1-FracPIC);    % (bigtheta 106)
   InsuK0 = InsuH0*(1-FracKIC);    % (bigtheta 107)
   InsuB0 = InsuH0;    % (bigtheta 108)
   InsuJ0 = InsuH0;    % (bigtheta 109)
   InsuPI0 = InsuPV0-((QfloIP*TdifIP/VolPI)*(InsuH0-InsuPV0));    % (bigtheta 110)
   InsuL0 = 1/QfloIL*(QfloIH*InsuH0-QfloIB*InsuB0-QfloIK*InsuK0-QfloIP*InsuPV0);    % (bigtheta 111)
   GammaBPIR = QfloIL/(1-FracLIC)*InsuL0 - QfloIJ*InsuJ0-QfloIA*InsuH0;    % (bigtheta 112)
   GammaPIC0 = InsuPI0/(((1-FracPIC)/FracPIC)*(1/QfloIP)-TdifIP/VolPI);    % (bigtheta 113)
   Pprp0 = pow((GlucH0),beta1PIR) /( pow((beta2PIR),beta1PIR)+beta3PIR*pow((GlucH0),beta4PIR) );    % (bigtheta 114)
   Ptgt0 = pow(Pprp0,beta5PIR);    % (bigtheta 115)
   Pinh0 = Pprp0;    % (bigtheta 116)
   Potn0 = Ptgt0;    % (bigtheta 117)
   InitialRinsu0 = ((KappaRinsu*Rinsu0)+ KappaRinsuPotn * Potn0)/(KappaRinsu+EMME1* Potn0);    % (bigtheta 118)
   Secr0 = EMME1*Ptgt0*InitialRinsu0;    % (bigtheta 119)
   GlucPV0 = GlucH0 - GammaBPGU/QfloGP;    % (bigtheta 120)
   GlucK0 = GlucH0;    % (bigtheta 121)
   GlucBV0 = GlucH0 - GammaBGU/QfloGB;    % (bigtheta 122)
   GlucJ0 = GlucH0-GammaJGU/QfloGJ;    % (bigtheta 123)
   GlucL0 = (QfloGA*GlucH0+QfloGJ*GlucJ0+GammaHGP0-GammaHGU0)/QfloGL;    % (bigtheta 124)
   GlucBI0 = GlucBV0-(GammaBGU*TdifB)/VolBI;    % (bigtheta 125)
   GlucPI0 = GlucPV0-GammaBPGU*TdifGP/VolPI;    % (bigtheta 126)
   MIPGU0 = beta0PGU+beta1PGU*tanh(beta2PGU*(1-beta3PGU));    % (bigtheta 127)
   MCHGP0 = beta0HGP   * tanh(beta1HGP * 1) - Func20;    % (bigtheta 128)
   MC0HGP0 = beta0HGP   * tanh(beta1HGP * 1);    % (bigtheta 129)
   MIHGP0 = beta2HGP - beta3HGP * tanh(beta4HGP * (1-beta5HGP));    % (bigtheta 130)
   MIHGPinf0 = MIHGP0;    % (bigtheta 131)
   MGHGP0 = beta6HGP-beta7HGP*tanh(beta8HGP*(1-beta9HGP));    % (bigtheta 132)
   MIHGU0 = beta0HGU * tanh(beta1HGU);    % (bigtheta 133)
   MIHGUinf0 = MIHGU0;    % (bigtheta 134)
   MGHGU0 = beta2HGU+beta3HGU*tanh(beta4HGU*(1-beta5HGU));    % (bigtheta 135)
   GammaKGE0 = (GlucK0<beta3KGE) * (beta0KGE+beta1KGE*tanh(beta2KGE*(GlucK0-beta3KGE))) + (GlucK0 >= beta3KGE) * (-beta4KGE+beta5KGE*GlucK0);    % (bigtheta 136)
   GammaLIC0 = FracLIC*(QfloIA*InsuH0+QfloIJ*InsuJ0+GammaBPIR);    % (bigtheta 137)
   GammaKIC0 = FracKIC*(QfloIK*InsuH0);    % (bigtheta 138)
   MGPCR0 = beta0PCR - beta1PCR * tanh(beta2PCR * (1-beta3PCR));    % (bigtheta 139)
   MIPCR0 = beta4PCR - beta5PCR * tanh(beta6PCR * (1-beta7PCR));    % (bigtheta 140)
   GammaPCC0 = Cgon0*GammaMCC;    % (bigtheta 141)
   GammaBPCR = GammaPCC0;    % (bigtheta 142)

%========================================================================================================================================