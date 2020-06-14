I=imread('1.jpg');
I=rgb2gray(I);

a=1/273*[1 4 7 4 1;4 16 26 16 4;7 26 41 26 7;4 16 26 16 4;1 4 7 4 1];

eg=conv2(I,a);
thresh = eg < 101;
eg(thresh) = 0;
% eg = edge(I,'Canny');
% Sobel,Prewitt,Canny,Roberts
imshow(eg);