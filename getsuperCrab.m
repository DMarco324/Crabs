function supercrab = getsuperCrab (supcrabSize)
 %This function stores and returns the supercrab at the origin with zero heading in the
 %form of a matirx.
 %Each colunm represents one point on the crab.

%body
supercrabPt1 = [ supcrabSize/2; -supcrabSize; 1];
supercrabPt2 = [ -supcrabSize/2; -supcrabSize; 1];
supercrabPt3 = [ -supcrabSize/2; supcrabSize; 1];
supercrabPt4 = [ supcrabSize/2; supcrabSize; 1];
supercrabPt5 = [ supcrabSize/2; -supcrabSize; 1];

%claws
supercrabPt6 = [ 2*supcrabSize; -supcrabSize/4; 1];
supercrabPt7 = [ 2*supcrabSize; -supcrabSize/4; 1];
supercrabPt8 = [ -2*supcrabSize; -supcrabSize/4; 1];
supercrabPt9 = [ -2*supcrabSize; -supcrabSize/4; 1];

%legs
supercrabPt10 = [-0; 1.5*supcrabSize; 1];
supercrabPt11 = [-supcrabSize; 1.5*supcrabSize; 1];
supercrabPt12 = [0; 1.5*supcrabSize; 1];
supercrabPt13 = [supcrabSize; 1.5*supcrabSize; 1];

supercrab = [supercrabPt1, supercrabPt2, supercrabPt3, supercrabPt4, supercrabPt5,supercrabPt6 ,supercrabPt7,supercrabPt8,supercrabPt9, supercrabPt10, supercrabPt11, supercrabPt12, supercrabPt13];



endfunction
