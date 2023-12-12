

function level = getLevel ( )
  
   while  (1) 
     
       commandwindow();
       cmd= kbhit(1);
       
      if(cmd == '1' || cmd == '2' || cmd == '3' || cmd == '4' || cmd == '5' || cmd =='6' || cmd == '7' || cmd == '8' || cmd == '9' ) 
        level = str2num(cmd);
        break;
      endif 
      
      pause(.1);
   endwhile

endfunction
