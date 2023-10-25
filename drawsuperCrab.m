function supercrabGraphics = drawsuperCrab (xsupCrab , ysupCrab , thetasupCrab , sizesupCrab)
% In the future, this function will draw the captain at the given
% position (xsupcrab, ysupcrab) , with heading thetaCapt.
% For now, it draws the captain at the (0, 0) with 0 heading.
% This function returns a vector of graphics handles called captainGrapics.
% The ith vector entry contains the graphics handle of ith line of the captain.
% Use your code from last week to get the captain matrix
% for a captain of dimension sizeCapt. Notice that
% sizesupcrabSizeis a parameter passed into drawCapt.
supCrab = getsuperCrab(sizesupCrab);

%--- rotate captain---%

R = getRotation(thetasupCrab);

supcrabRotated = R *supCrab;
%supCrabRotated = R*superCrab;

%--- shift captain to new location----%

T = getTranslation(xsupCrab,ysupCrab);

supCrab = T * supcrabRotated;
%supCrab = T*supcrabRotated;

% Extract the captain points from the captain matrix capt.
pt1=supCrab( : , 1);
pt2=supCrab( : , 2);
pt3=supCrab( : , 3);
pt4=supCrab( : , 4);
pt5=supCrab( : , 5);
pt6=supCrab( : , 6);
pt7=supCrab( : , 7);
pt8=supCrab( : , 8);
pt9=supCrab( : , 9);
pt10=supCrab( : , 10);
pt11=supCrab( : , 11);
pt12=supCrab( : , 12);
pt13=supCrab( : , 13);

% Draw the captain and set the return vector of graphics handles.
supercrabGraphics(1) = drawLine(pt1 , pt2 , "k");
supercrabGraphics(2) = drawLine(pt2 , pt3 , "k");
supercrabGraphics(3) = drawLine(pt3 , pt4 , "k");
supercrabGraphics(4) = drawLine(pt4 , pt5 , "k");
supercrabGraphics(5) = drawLine(pt1 , pt5, "k");
supercrabGraphics(6) = drawLine(pt5 , pt6 , "k");
supercrabGraphics(7) = drawLine(pt6 , pt7 , "k");
supercrabGraphics(8) = drawLine(pt2 , pt8 , "k");
supercrabGraphics(9) = drawLine(pt8 , pt9 , "k");
supercrabGraphics(10) = drawLine(pt3 , pt10 , "k");
supercrabGraphics(11) = drawLine(pt10 , pt11 , "k");
supercrabGraphics(12) = drawLine(pt4 , pt12 , "k");
supercrabGraphics(13) = drawLine(pt12 , pt13 , "k");
endfunction
