function crabs ()

  % when the captain touches the crab, the crab should disappear and re-appear in a new, random 
  % Crabs is a kids computer game where a fisherman, called the captain,
  % hunts for a very clever and powerful crab.
  % Draw the game map and initialize map dimensions.


playGame= 1; 
while(playGame)

  %draw start screen
    level = drawStartScreen("newStartScreen.png");
  
  %set the nnumber of supercrab and crabs  
  numCrabs=level;  
  numsupCrab=level;
  numJelly=level;
  %initialize game map dimensions and draw map
  [mapHeight , mapWidth] = drawMap ( "BGImage.png" );


% % Initialize captain location, heading and size
xCapt = 1800;
yCapt = 500;
thetaCapt = -pi/2;
sizeCapt = 50;
healthCapt = 100;
crabsCaught = 0;

isCrabCaught=zeros(1,numCrabs);

xCrab = rand(1,numCrabs)*mapWidth;
yCrab = rand(1,numCrabs)*mapHeight;
thetaCrab = -pi/2;
sizeCrab = 50;

%initialize jellyfish
xJelly = rand(1,numJelly)*mapWidth;
yJelly = rand(1,numJelly)*mapHeight;
thetaJelly = ones(1,numJelly)*(-pi/2);
sizeJelly = 20;
jellyHealth = 10;

%xsupCrab = rand(1,numsupCrab)*mapWidth;
%ysupCrab = (1,numsupCrab)*0;
xsupCrab = rand(1,numsupCrab)*mapWidth;
ysupCrab = 0;

xsupCrab = rand(1,numsupCrab)*mapWidth;
ysupCrab = rand(1,numsupCrab)*mapHeight;
thetasupCrab = ones(1,numsupCrab)*(-pi/.2);
sizesupCrab = 80;
supercrabDmg = 30;




% Initialize crab location, heading and size

%draw initial captain and crab 

[captainGraphics, xSpear, ySpear] = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt);

for k=1:numCrabs
  

crabGraphics(:,k) = drawCrab (xCrab(k), yCrab(k), thetaCrab, sizeCrab);
endfor 

 for j=1:numsupCrab

supercrabGraphics(:,j) = drawsuperCrab (xsupCrab(j) , ysupCrab(j) , thetasupCrab(j) , sizesupCrab);

endfor 

for g=1:numJelly
  
  jellyGraphics(:,g) = drawJelly(xJelly(g),yJelly(g),thetaJelly(g),sizeJelly);
  
endfor  



 % print health status
    healthLoc = [100,100];
    crabsCaughtLoc = [100,175];
    healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', num2str(healthCapt)), 'FontSize', 12, 'Color', 'r');
    crabsCaughtStatus = text(crabsCaughtLoc(1), crabsCaughtLoc(2), strcat('Crabs Caught = ',num2str(crabsCaught)), 'FontSize', 12, 'Color', 'r');


% input and output arguments.
%*******************************************************

while (1) % While not quit, read keyboard and respond
    commandwindow();
    cmd = kbhit(1); % Read the keyboard.
    if (cmd == "Q"||healthCapt< 0 ||crabsCaught== numCrabs );
      
      break;
    endif 
    
    %Captain has moved. Respond.
     
     if( cmd == "w" || cmd == "a" || cmd == "d" || cmd== "s" )
       
         % erase old captain
        for (i=1: length(captainGraphics) )
        set(captainGraphics(i), 'Visible', 'off' );
        endfor 
        
        % move capt
        [xCapt, yCapt, thetaCapt] = moveCapt(cmd, xCapt, yCapt, thetaCapt, mapWidth, mapHeight);
        
        
        % draw new capt
        [captainGraphics, xSpear, ySpear] = drawCapt( xCapt, yCapt, thetaCapt, sizeCapt);
      endif
      
      
       for j=1:numsupCrab  
        %erease old supercrab
        for i=1:length(supercrabGraphics(:,j))
         delete (supercrabGraphics(i,j));
        endfor
       
        %move supercrab
        [xsupCrab(j), ysupCrab(j), thetasupCrab(j)] = movesuperCrab (xsupCrab(j),ysupCrab(j),thetasupCrab(j),sizesupCrab,mapHeight,mapWidth); 
  
        %draw new supercrab
        supercrabGraphics(:,j) = drawsuperCrab (xsupCrab(j) , ysupCrab(j) , thetasupCrab(j) , sizesupCrab); 
        
        % erase old jellyfish
        for i=1:length(jellyGraphics(:,g))
        delete(jellyGraphics(i,g));
      endfor             
        % move jellyfish
      %[xJelly(g),yJelly(g),thetaJelly(g)] = moveJelly(xJelly(g), yJelly(g),thetaJelly(g), sizeJelly,mapHeight,mapWidth);
       
        % draw jellyfish
        jellyGraphics(:,g) = drawJelly(xJelly(g),yJelly(g),thetaJelly(g),sizeJelly);
        
        %jelly touches capt 
        if(getDist(xJelly(g),yJelly(g),xCapt,yCapt) < 3*sizeCapt )
        healthCapt = healthCapt + jellyHealth;
        endif 
        
   
         %supercrab touches capt 
        % for s=1:length(supercrabGraphics)
        if ( getDist(xsupCrab(j),ysupCrab(j),xCapt,yCapt) < 3*sizeCapt )
         healthCapt = healthCapt - supercrabDmg;
        endif
        endfor 
  
        for k=1:numCrabs
  
        %crab is caught
        if( getDist(xSpear,ySpear,xCrab(k),yCrab(k)) < 2*sizeCapt  && !isCrabCaught(k) )
 
  
         %keep track of how many crabs are caught
          crabsCaught = crabsCaught +1;
           isCrabCaught(k)=1;
  
          %erase old crab
          for i=1:length(crabGraphics(:,k))
       delete(crabGraphics(i,k));
          endfor

        endif

        endfor 
 
  
 
        %remove old and plot new health and points status to screen
        delete(healthStatus);
        delete(crabsCaughtStatus);
        healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', num2str(healthCapt)), 'FontSize', 12, 'Color', 'r');
        crabsCaughtStatus = text(crabsCaughtLoc(1), crabsCaughtLoc(2), strcat('Crabs Caught = ',num2str(crabsCaught)), 'FontSize', 12, 'Color', 'r');
  


         %if( getDist(xSpear,ySpear,xCrab,yCrab) < 2*sizeCapt ) 
  
            
          fflush(stdout);
          pause(.01);
     endwhile

        %draw the endscreen here . If restart reqested, set playgame = 1.
       playGame = drawEndScreen("newStartScreen.png",crabsCaught,numCrabs);

 endwhile
      close all
      clear



endfunction