
function restart = drawEndScreen (imgName,crabsCaught,numCrabs)
  clf 
 
 %draw the end screen
  drawMap(imgName);
  
      hold on ;
         myMessage = ['Good job! You Caught ', num2str(crabsCaught), " out of ", num2str(numCrabs),'crabs!' ];
         textLoc = [20,350];
         textHandle=text(textLoc(1) , textLoc(2), myMessage, 'FontSize', 25 , 'Color', 'red');
         
         pause(3);
         
         delete (textHandle);
         textLoc=[150,370];
         textHandle=text(textLoc(1),textLoc(2), 'Play again? Y/N', 'FontSize',40, 'Color', 'red');
         
         %read keyboard
         while(1)
         
         %focus on command window
         commandwindow();
         
         cmd=kbhit(1);
         
         if(cmd == 'y' || cmd == 'Y')
                restart =1;
                break;
            elseif(cmd == 'n'  || cmd == 'N')
                   restart = 0;
                   break;
         endif 
   
          pause(.1);
       
      endwhile 
      
      
        hold off ;
        
         
         
         
  
     

endfunction
