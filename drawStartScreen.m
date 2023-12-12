function level = drawStartScreen (imgName)
  %Draw a start screen that contains the message that ask what level to play at and reads the players level input 
  
  [height,width]=drawMap(imgName);
  hold on ;
      levelLoc = [210,370];
      myMessage = ['Enter a Level 1-9'];
      myText = text(levelLoc(1), levelLoc(2), myMessage, 'FontSize', 30 , 'Color', 'red');
      
      level = getLevel();
      
      delete(myText);
      myMessage = [ 'OK, Level = ', ' ',num2str(level)];
      text(levelLoc(1),levelLoc(2), myMessage , 'FontSize', 30, 'Color', 'red');
      pause(2);
      
     hold off ;

endfunction
