function [xJelly, yJelly, thetJelly] = moveJelly (x,y,theta,size,height,width)

dstep=30;
xJelly=x;
yJelly=y+dstep;
thetaJelly=theta;

if( yJelly>height)
yJelly=size;
xJelly=rand*width;
endif

endfunction
