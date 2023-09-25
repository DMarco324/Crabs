function handle = drawLine (p,q,myColor)
% This function draws a line between two 2D points p and q in homogeneous
%coordinates.
p;
q;
myColor;
% extract x coord from points
x = [p(1) ; q(1)];
% extract y coord from points
y = [p(2) ; q(2)];
% plot
handle = plot(x,y,myColor);
set(handle,"LineWidth",3);
endfunction


