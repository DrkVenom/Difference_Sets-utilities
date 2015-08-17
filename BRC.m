%Name: 		Tony Ranieri
%Created:       March 2015
%Modified:      May 2015

function BRC( v,n,l )
%
% Inputs:
%	v      - the parameter v, ie |G|, should be odd
%	n      - the parameter n, ie k-l
%	l      - value lambda, ie l = k(k-1)/v
%

%------------- BEGIN CODE --------------

%test to verify v is odd, if not terminate program
if (mod(v,2) == 0)
    error('The given value of v is even. You are using an incorrect statement of the Bruck-Ryser-Chowla theorem')
end
counter=0;
for i=1:1000
    for j=1:1000
        x = sqrt((n*i^2)+(-1)^((v-1)/2)*(l*j^2));
        if ((x^2)>0 && mod(x,1) == 0)
            %output a triplet satisfying BRC
            disp(sprintf('(x,y,z)=(%1.0f,%1.0f,%1.0f)',x,i,j))
            counter = counter+1;
        end
    end
end
disp(sprintf('There are %1.0f solution pairs for these parameters',counter))
end
