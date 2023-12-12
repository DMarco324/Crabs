function [xCapt, yCapt, thetaCapt] = moveCapt(cmd, x, y, theta, width, height);
dTheta = pi/6;
dStep = 50;
xCapt=x;
yCapt=y;
thetaCapt=theta;

sprintRes = 100;

if( cmd == "w" ) %move forward
xTemp = x + dStep*cos(theta);
yTemp = y + dStep*sin(theta);
thetaCapt = theta;

      if (isOnMap(xTemp, yTemp, width, height));
  xCapt = xTemp;
  yCapt = yTemp;
      else
  xCrab = x;
  yCrab = y;
      endif

elseif ( cmd == "a" ) %turn left
xCapt = x;
yCapt = y;
thetaCapt = theta - dTheta;

elseif ( cmd == "d" ) %turn right
xCapt = x;
yCapt = y;
thetaCapt = theta + dTheta;

elseif(cmd == "s")
xTemp = x + sprintRes*cos(theta);
yTemp = y + sprintRes*sin(theta);

else % if none of the cases are true, set the new variables equal to the old inputs.
xCapt = x;
yCapt = y;
thetaCapt = theta;

endif

endfunction

