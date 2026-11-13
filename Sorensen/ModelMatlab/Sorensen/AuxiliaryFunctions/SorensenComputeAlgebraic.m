%========================================================================================================================================
% SCRIPT SorensenComputeAlgebraic.m: compute the values of algebraic variables
% Sorensen V01.01.41 20190724 (Gemini 13.01.06, BMLib 10.0.2, Autocoder 02.11.09, coded 24-Jul-2019 16:06:54)
%========================================================================================================================================


%  Variable GlucBV               (CurrentY 001) is not determined
%  Variable GlucBI               (CurrentY 002) is not determined
%  Variable GlucH                (CurrentY 003) is not determined
GlucNH = GlucH / GlucH0;    % (CurrentY 004)
%  Variable GlucJ                (CurrentY 005) is not determined
%  Variable GlucL                (CurrentY 006) is not determined
GlucNL = GlucL / GlucL0;    % (CurrentY 007)
%  Variable GlucK                (CurrentY 008) is not determined
%  Variable GlucPV               (CurrentY 009) is not determined
%  Variable GlucPI               (CurrentY 010) is not determined
GlucNPI = GlucPI / GlucPI0;    % (CurrentY 011)
GammaPGU = GammaBPGU * GlucNPI * MIPGU;    % (CurrentY 012)
MIPGU = beta0PGU + beta1PGU * tanh(beta2PGU * (InsuNPI - beta3PGU));    % (CurrentY 013)
GammaHGP = GammaHGP0 * MIHGP * MCHGP * MGHGP;    % (CurrentY 014)
%  Variable MIHGP                (CurrentY 015) is not determined
MIHGPinf = beta2HGP - beta3HGP * tanh(  beta4HGP*( InsuNL - beta5HGP ) );    % (CurrentY 016)
MCHGP = MC0HGP - Fun2;    % (CurrentY 017)
MC0HGP = beta0HGP * tanh(beta1HGP * CgonN);    % (CurrentY 018)
%  Variable Fun2                 (CurrentY 019) is not determined
MGHGP = (beta6HGP - beta7HGP * tanh(beta8HGP * (GlucNL - beta9HGP)));    % (CurrentY 020)
GammaHGU = GammaHGU0 * MIHGU * MGHGU;    % (CurrentY 021)
%  Variable MIHGU                (CurrentY 022) is not determined
MIHGUinf = beta0HGU * tanh(beta1HGU *  InsuNL);    % (CurrentY 023)
MGHGU = beta2HGU + beta3HGU * tanh(beta4HGU * (GlucNL -  beta5HGU));    % (CurrentY 024)
GammaKGE = (GlucK < beta3KGE)   *  (beta0KGE + beta1KGE * tanh(beta2KGE*( GlucK - beta3KGE )))   + (GlucK >= beta3KGE)   *  (- beta4KGE + beta5KGE * GlucK);    % (CurrentY 025)
%  Variable InsuB                (CurrentY 026) is not determined
%  Variable InsuH                (CurrentY 027) is not determined
InsuNH = InsuH / InsuH0;    % (CurrentY 028)
%  Variable InsuJ                (CurrentY 029) is not determined
%  Variable InsuL                (CurrentY 030) is not determined
%  Variable InsuK                (CurrentY 031) is not determined
%  Variable InsuPV               (CurrentY 032) is not determined
%  Variable InsuPI               (CurrentY 033) is not determined
InsuNPI = InsuPI / InsuPI0;    % (CurrentY 034)
InsuNL = InsuL / InsuL0;    % (CurrentY 035)
GammaLIC = FracLIC * (QfloIA * InsuH + QfloIJ * InsuJ + GammaPIR);    % (CurrentY 036)
GammaKIC = FracKIC * (QfloIK * InsuH);    % (CurrentY 037)
GammaPIC = InsuPI / (((1.0 - FracPIC  ) / FracPIC) * (1 / QfloIP) - (TdifIP / VolPI));    % (CurrentY 038)
GammaPIR = SecrN * GammaBPIR;    % (CurrentY 039)
%  Variable Potn                 (CurrentY 040) is not determined
%  Variable Pinh                 (CurrentY 041) is not determined
%  Variable Rinsu                (CurrentY 042) is not determined
Secr = (Pprp > Pinh)   *   ((EMME1 * Ptgt + EMME2 * (Pprp - Pinh)) * Rinsu) + (Pprp <= Pinh) * (EMME1 * Ptgt * Rinsu);    % (CurrentY 043)
SecrN = Secr / Secr0;    % (CurrentY 044)
Pprp = pow(GlucH,beta1PIR)/(pow(beta2PIR,beta1PIR)+beta3PIR*pow(GlucH,beta4PIR));    % (CurrentY 045)
Ptgt = pow(Pprp,beta5PIR);    % (CurrentY 046)
%  Variable Cgon                 (CurrentY 047) is not determined
CgonN = Cgon / Cgon0;    % (CurrentY 048)
GammaPCC = GammaMCC * Cgon;    % (CurrentY 049)
GammaPCR = GammaBPCR * MGPCR * MIPCR;    % (CurrentY 050)
MGPCR = beta0PCR - beta1PCR * tanh(beta2PCR * (GlucNH - beta3PCR));    % (CurrentY 051)
MIPCR = beta4PCR - beta5PCR * tanh(beta6PCR * (InsuNH - beta7PCR));    % (CurrentY 052)
GammaIVG = GammaIVG0+(GammaIVGin)*(Time>=TimeIVG)*(Time<=TimeIVGend);    % (CurrentY 053)
GammaIVI = GammaIVI0+(GammaIVIin)*(Time>=TimeIVI)*(Time<=TimeIVIend);    % (CurrentY 054)

%========================================================================================================================================