function [ Q ] = Rotate_peri2abs( OM,w,incl )
%Rotate_peri2abs Calculates the rotational matrix, given in Eq. 4.49 of
%textbook
%   Matrix is used to move from perifocal frame to an absolute frame
%   To move from absolute to perifocal, just use this eq, and then take the
%   transpose of the matrix Q
Q=zeros(3,3);
Q(1,1)=-sin(OM)*cos(incl)*sin(w)+cos(OM)*cos(w);
Q(1,2)=-sin(OM)*cos(incl)*cos(w)-cos(OM)*sin(w);
Q(1,3)=sin(OM)*sin(incl);
Q(2,1)=cos(OM)*cos(incl)*sin(w)+sin(OM)*cos(w);
Q(2,2)=cos(OM)*cos(incl)*cos(w)-sin(OM)*sin(w);
Q(2,3)=-cos(OM)*sin(incl);
Q(3,1)=sin(incl)*sin(w);
Q(3,2)=sin(incl)*cos(w);
Q(3,3)=cos(incl);

end

