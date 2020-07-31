%this codes calcutes number of objects in a figure
%this task was on cody.org and euler challange.
%I also added how to change color of detected objects 

I=imread('F:\\Matlab\\coins.tif');

%binary Image
bin = imbinarize(I, graythresh(I));
%fill image
fill = imfill(bin, 'holes');
%perimeter of object
gray_image_perim = bwperim(fill);
%connected components
CC = bwconncomp(gray_image_perim);
%numobject outparameter of connected component
number=CC.NumObjects;
disp(number);
%Yellow Color for objects  
col=label2rgb(fill,[0 1  0]);

imshow(col);
