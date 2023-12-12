function [xsupcrab, ysupcrab, thetasupcrab] = movesuperCrab (x,y,theta,size,height,width)

dstep=50;
xsupcrab=x;
ysupcrab=y+dstep;
thetasupcrab=theta;

if( ysupcrab>height)
ysupcrab=size;
xsupcrab=rand*width;
endif

endfunction
