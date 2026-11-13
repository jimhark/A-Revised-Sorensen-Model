%========================================================================================================================================
% FUNCTION SorensenCheckParameters.m: verify acceptability of a (vector) parameter value
% Sorensen V01.01.41 20190724 (Gemini 13.01.06, BMLib 10.0.2, Autocoder 02.11.09, coded 24-Jul-2019 16:06:54)
% INPUT        bigtheta     the vector of parameter values to be checked
% OUTPUT       retcode      an error code corresponding to the violating parameter or to the violated dynamic constraint
%========================================================================================================================================


function retcode = SorensenCheckParameters(bigtheta)


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
SorensenBigtheta2Parvals;

% Third phase: verify individually determined parameters
SorensenDetermineParameters; % can do it now because we have verified that no combinations of non-det parameters are dangerous...
SorensenParvals2Bigtheta;
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