function crabs ()
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.
% Draw the game map and initialize map dimensions.
[mapHeight , mapWidth] = drawMap ( "BGImage.png" );

% Initialize captain location, heading and size
%xCapt = 1800;
%yCapt = 600;
% =======
xCapt = 1800;
yCapt = 500;
thetaCapt = -pi/2;
sizeCapt = 50;

% Initialize crab location, heading and size

%draw initial captain and crab 



captainGraphics = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt)
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
      
      
endwhile

close all

endfunction

