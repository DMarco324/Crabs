function [xCrab, yCrab, thetaCrab] = moveCrab (cmd, x, y, theta, width, height)

  dTheta = pi/6;
  dStep = 150;
  xCrab=x;
  yCrab=y;
  thetaCrab=theta;
  
  if( cmd == "i" ) %move left
    xTemp = x + dStep*cos(theta);
    yTemp = y + dStep*sin(theta);
    thetaCrab = theta;

    if (isOnMap(xTemp, yTemp, width, height));
      xCrab = xTemp;
      yCrab = yTemp;
    else
      xCrab = x;
      yCrab = y;
    endif

  elseif ( cmd == "j" ) %turn left
    xCrab = x;
    yCrab = y;
    thetaCrab = theta - dTheta;

  elseif ( cmd == "l" ) %turn right
    xCrab = x;
    yCrab = y;
    thetaCrab = theta + dTheta;

  else % if none of the cases are true, set the new variables equal to the old inputs.
    xCrab = x;
    yCrab = y;
    thetaCrab = theta;

  endif

endfunction
