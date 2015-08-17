%Name: 		Tony Ranieri
%Created:       March 2015
%Modified:      May 2015

function set_parameters( v )
%
% Inputs:
%	v      - the parameter v, ie. |G|
%

%------------- BEGIN CODE --------------

%set limiting value
limit=1;
if (mod(v,2)==0)
    limit = v/2;
else
    limit = (v-1)/2;
end

counter=0;
%start with k=2, since k=1 forces lambda to be 0
for k=2:limit
	lam = (k*(k-1))/(v-1);
	if (mod(lam,1) == 0)
        %output a candidate for difference set parameters
        disp(sprintf('(v,k,l)=(%1.0f,%1.0f,%1.0f) is a potential set of parameters.',v,k,lam))
        counter = counter+1;
	end
end
disp(sprintf('There are %1.0f potential candidates for difference sets.',counter))
end
