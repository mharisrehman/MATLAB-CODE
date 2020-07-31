
clc
clear
% create array containing 361 equally spaced points btw 0 and 2*pi 
degrees = linspace(0 ,2*pi ,361);
% store in the array 'c' cosine of all the values in the array 'degrees' 
c = cos(degrees); 
% store in the array 's' sine of all the values in the array 'degrees' 
s = sin(degrees); 
% calculate appropriate step size for plotting a hexagon 
side=input('Enter No of Sides of Polygon :');
step = 360/side; 
%plot the polygon 
plot(c(1:step:361), s(1:step:361)) 
%set equal aspect ratio for all the axis 
axis equal
