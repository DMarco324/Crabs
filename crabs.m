function crabs ()
  
  % when the captain touches the crab, the crab should disappear and re-appear in a new, random 
  
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.
% Draw the game map and initialize map dimensions.
[mapHeight , mapWidth] = drawMap ( "BGImage.png" );

% Initialize captain location, heading and size

% =======
xCapt = 1800;
yCapt = 500;
thetaCapt = -pi/2;
sizeCapt = 50;

xCrab = 1000;
yCrab = 600;
thetaCrab = -pi/2;
sizeCrab = 50;

xsupCrab = 400;
ysupCrab = 500;
thetasupCrab= pi/-.5;
sizesupCrab = 80;

% Initialize crab location, heading and size

%draw initial captain and crab 

captainGraphics = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt)

crabGraphics = drawCrab (xCrab, yCrab, thetaCrab, sizeCrab)

supercrabGraphics = drawsuperCrab (xsupCrab , ysupCrab , thetasupCrab , sizesupCrab)

% input and output arguments.
%*******************************************************
cmd = "null"; % initial command
while ( cmd != "Q") % While not quit, read keyboard and respond
    cmd = kbhit(); % Read the keyboard.
    
      if( cmd == "w" || cmd == "a" || cmd == "d" ) %Captain has moved. Respond.
       
       % erase old captain
        
        for (i=1: length(captainGraphics) )
          set(captainGraphics(i), 'Visible', 'off' );
        endfor 
        % move capt
        [xCapt, yCapt, thetaCapt] = moveCapt(cmd, xCapt, yCapt, thetaCapt, mapWidth, mapHeight);
        
        % draw new capt
        captainGraphics = drawCapt( xCapt, yCapt, thetaCapt, sizeCapt);
        endif
        
      if( cmd == "j" || cmd == "l" || cmd == "i" ) %Crab has moved
      
        % erase old crab
        for (i = 1 : length(crabGraphics) )
          set(crabGraphics(i), 'Visible', 'off' );
        endfor
        
        % move crab
        [xCrab, yCrab, thetaCrab] = moveCrab(cmd, xCrab, yCrab, thetaCrab, mapWidth, mapHeight);
        % draw new capt
        crabGraphics = drawCrab( xCrab, yCrab, thetaCrab, sizeCrab);
      endif
      
        
      %if() % if crab touches spear
     
     if (crabGraphics == captainGraphics(12)) 
      set(crabGraphics , 'visible', 'off' );
      endif 
      
      
endwhile

endfunction