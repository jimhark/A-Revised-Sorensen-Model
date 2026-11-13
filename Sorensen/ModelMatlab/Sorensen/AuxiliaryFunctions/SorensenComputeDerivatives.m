%========================================================================================================================================
% SCRIPT SorensenComputeDerivatives.m: compute the derivatives of the differential variables
% Sorensen V01.01.41 20190724 (Gemini 13.01.06, BMLib 10.0.2, Autocoder 02.11.09, coded 24-Jul-2019 16:06:54)
%========================================================================================================================================


out1 = []; % Builds contextually the   out1   column (!) vector used by Matlab's Odefile
dGlucBVdt = (GlucH - GlucBV) * QfloGB / VolGBV - VolBI / (TdifB * VolGBV) * (GlucBV - GlucBI);    % (CurrentY 001)
out1 = [out1; dGlucBVdt]; % correct value for a differential variable
dGlucBIdt = 1 / TdifB * (GlucBV - GlucBI) - GammaBGU / VolBI;    % (CurrentY 002)
out1 = [out1; dGlucBIdt]; % correct value for a differential variable
dGlucHdt = (QfloGB * GlucBV + QfloGL * GlucL +  QfloGK * GlucK + QfloGP * GlucPV - QfloGH * GlucH - GammaRBCU + GammaIVG) / VolGH;    % (CurrentY 003)
out1 = [out1; dGlucHdt]; % correct value for a differential variable
%  Variable GlucNH               (CurrentY 004) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
dGlucJdt = (GlucH - GlucJ) * QfloGJ / VolGJ - GammaJGU / VolGJ;    % (CurrentY 005)
out1 = [out1; dGlucJdt]; % correct value for a differential variable
dGlucLdt = (QfloGA * GlucH + QfloGJ * GlucJ - QfloGL * GlucL + GammaHGP - GammaHGU) / VolGL;    % (CurrentY 006)
out1 = [out1; dGlucLdt]; % correct value for a differential variable
%  Variable GlucNL               (CurrentY 007) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
dGlucKdt = (GlucH - GlucK) * QfloGK / VolGK - GammaKGE / VolGK;    % (CurrentY 008)
out1 = [out1; dGlucKdt]; % correct value for a differential variable
dGlucPVdt = QfloGP / VolGPV * (GlucH - GlucPV) - VolPI / (TdifGP * VolGPV) * (GlucPV - GlucPI);    % (CurrentY 009)
out1 = [out1; dGlucPVdt]; % correct value for a differential variable
dGlucPIdt = (GlucPV - GlucPI) / TdifGP - GammaPGU / VolPI;    % (CurrentY 010)
out1 = [out1; dGlucPIdt]; % correct value for a differential variable
%  Variable GlucNPI              (CurrentY 011) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
%  Variable GammaPGU             (CurrentY 012) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
%  Variable MIPGU                (CurrentY 013) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
%  Variable GammaHGP             (CurrentY 014) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
dMIHGPdt = (MIHGPinf - MIHGP) / tauInsu;    % (CurrentY 015)
out1 = [out1; dMIHGPdt]; % correct value for a differential variable
%  Variable MIHGPinf             (CurrentY 016) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
%  Variable MCHGP                (CurrentY 017) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
%  Variable MC0HGP               (CurrentY 018) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
dFun2dt = ((MC0HGP - 1.0) / 2.0 - Fun2) / tauCgon;    % (CurrentY 019)
out1 = [out1; dFun2dt]; % correct value for a differential variable
%  Variable MGHGP                (CurrentY 020) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
%  Variable GammaHGU             (CurrentY 021) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
dMIHGUdt = (MIHGUinf - MIHGU) / tauInsu;    % (CurrentY 022)
out1 = [out1; dMIHGUdt]; % correct value for a differential variable
%  Variable MIHGUinf             (CurrentY 023) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
%  Variable MGHGU                (CurrentY 024) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
%  Variable GammaKGE             (CurrentY 025) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
dInsuBdt = QfloIB / VolIB * (InsuH - InsuB);    % (CurrentY 026)
out1 = [out1; dInsuBdt]; % correct value for a differential variable
dInsuHdt = (QfloIB * InsuB + QfloIL * InsuL + QfloIK * InsuK + QfloIP * InsuPV - QfloIH * InsuH +GammaIVI) / VolIH;    % (CurrentY 027)
out1 = [out1; dInsuHdt]; % correct value for a differential variable
%  Variable InsuNH               (CurrentY 028) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
dInsuJdt = QfloIJ / VolIJ * (InsuH - InsuJ);    % (CurrentY 029)
out1 = [out1; dInsuJdt]; % correct value for a differential variable
dInsuLdt = (QfloIA * InsuH + QfloIJ * InsuJ - QfloIL * InsuL + GammaPIR - GammaLIC) / VolIL;    % (CurrentY 030)
out1 = [out1; dInsuLdt]; % correct value for a differential variable
dInsuKdt = (QfloIK / VolIK) * (InsuH - InsuK) - GammaKIC / VolIK;    % (CurrentY 031)
out1 = [out1; dInsuKdt]; % correct value for a differential variable
dInsuPVdt = (QfloIP/VolIPV) * (InsuH - InsuPV) - VolPI / (VolIPV * TdifIP) * (InsuPV - InsuPI);    % (CurrentY 032)
out1 = [out1; dInsuPVdt]; % correct value for a differential variable
dInsuPIdt = (1 / TdifIP) * (InsuPV - InsuPI) - GammaPIC / VolPI;    % (CurrentY 033)
out1 = [out1; dInsuPIdt]; % correct value for a differential variable
%  Variable InsuNPI              (CurrentY 034) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
%  Variable InsuNL               (CurrentY 035) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
%  Variable GammaLIC             (CurrentY 036) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
%  Variable GammaKIC             (CurrentY 037) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
%  Variable GammaPIC             (CurrentY 038) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
%  Variable GammaPIR             (CurrentY 039) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
dPotndt = KappaPotnPtgt * (Ptgt - Potn);    % (CurrentY 040)
out1 = [out1; dPotndt]; % correct value for a differential variable
dPinhdt = KappaPinhPrp * (Pprp - Pinh);    % (CurrentY 041)
out1 = [out1; dPinhdt]; % correct value for a differential variable
dRinsudt = KappaRinsu * (Rinsu0 - Rinsu) + KappaRinsuPotn * Potn - Secr;    % (CurrentY 042)
out1 = [out1; dRinsudt]; % correct value for a differential variable
%  Variable Secr                 (CurrentY 043) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
%  Variable SecrN                (CurrentY 044) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
%  Variable Pprp                 (CurrentY 045) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
%  Variable Ptgt                 (CurrentY 046) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
dCgondt = (GammaPCR - GammaPCC) / VolC;    % (CurrentY 047)
out1 = [out1; dCgondt]; % correct value for a differential variable
%  Variable CgonN                (CurrentY 048) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
%  Variable GammaPCC             (CurrentY 049) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
%  Variable GammaPCR             (CurrentY 050) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
%  Variable MGPCR                (CurrentY 051) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
%  Variable MIPCR                (CurrentY 052) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
%  Variable GammaIVG             (CurrentY 053) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable
%  Variable GammaIVI             (CurrentY 054) is not differentially expressed
out1 = [out1; 0]; % zero socket for a non-differential variable

%========================================================================================================================================