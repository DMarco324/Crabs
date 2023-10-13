function crabs ()
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.
% Draw the game map and initialize map dimensions.
[mapHeight , mapWidth] = drawMap ( "BGImage.png" );

% Initialize captain location, heading and size
xCapt = 1800;
yCapt = 600;
% =======
xCapt = 1800;
yCapt = 500;
thetaCapt = -pi/2;
sizeCapt = 50;

% Initialize crab location, heading and size
xCrab=1000
yCrab=600
thetaCrab=-pi/2;
sizeCrab=50;

%draw initial captain and crab 
captGraphics = drawCapt(xCapt,yCapt,thetaCapt,sizeCapt);
crabGraphics = drawCrab(xCrab,yCrab,thetaCrab,sizeCrab);

% Draw the captain and initialize graphics handles
%*********************************************************
% Put your call to drawCapt() here ..... You must give drawCapt its
captainGraphics = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt)
% input and output arguments.
%*******************************************************
endfunction

