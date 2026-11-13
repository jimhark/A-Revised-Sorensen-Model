%========================================================================================================================================
% FUNCTION BioSorSimoCheckParameters.m: verify acceptability of a (vector) parameter value
% BioSorSimo V01.01.45 20200319 (Gemini 13.01.06, BMLib 10.0.2, Autocoder 02.13.01, coded 20-May-2020 11:29:48)
% INPUT        bigtheta     the vector of parameter values to be checked
% OUTPUT       retcode      an error code corresponding to the violating parameter or to the violated dynamic constraint
%========================================================================================================================================


function retcode = BioSorSimoCheckParameters(bigtheta)


global PARMIN PARMAX PARDETM;

% First phase: must verify individually the non-determined parameters, which may cause problems in the computation of determined parameters
nPars = length(bigtheta);
for (p = 1:nPars)
  if ( PARDETM(p) == 0 )  % now look at non-determined parameters
     if ( (bigtheta(p) < PARMIN(p)) || (bigtheta(p) > PARMAX(p) )  )
        retcode = p;
        return;
     end
  end
end

% Second phase: apply the dynamic constraints
nConstraints = 0; % just for future reference as necessary
BioSorSimoBigtheta2Parvals;

% Third phase: verify individually determined parameters
BioSorSimoDetermineParameters; % can do it now because we have verified that no combinations of non-det parameters are dangerous...
BioSorSimoParvals2Bigtheta;
for (p = 1:nPars)
  if ( PARDETM(p) == 1 )  % now look at determined parameters
     if ( (bigtheta(p) < PARMIN(p)) || (bigtheta(p) > PARMAX(p) )  )
        retcode = p;
        return;
     end
  end
end

retcode = 0; % if we are here no parameter was wrong

%========================================================================================================================================