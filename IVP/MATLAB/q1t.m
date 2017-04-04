i=imread('Image.jpg');
subplot(1,3,1);
imshow(i); 
title('Original');
I=rgb2gray(i);

I=im2double(I);

[m n] = size(I);

c = 1;
%Gamma correction Array; (s= c *r^gamma)
g =[0.5 4];

x=1;
for r=1:length(g)
for p = 1 : m
    for q = 1 : n
        I3(p, q) = c * I(p, q).^ g(r);  
    end
end
x=x+1;
subplot(1,3,x);
imshow(I3);title('Power-law Transformation');xlabel(g(r));
end