
img=imread('face images.jpg');
B=rgb2gray(img);
subplot(2,2,[1,2]);
imshow(B)
title('Original Image');
I=double(B);

for i=1:size(I,1)-2
    for j=1:size(I,2)-2
        %Sobel mask for x-direction:
        mx=((2*I(i+2,j+1)+I(i+2,j)+I(i+2,j+2))-(2*I(i,j+1)+I(i,j)+I(i,j+2)));
        %Sobel mask for y-direction:
        my=((2*I(i+1,j+2)+I(i,j+2)+I(i+2,j+2))-(2*I(i+1,j)+I(i,j)+I(i+2,j)));

        %The gradient of the image
        B(i,j)=sqrt(mx.^2+my.^2);
    end
end

subplot(2,2,3)
imshow(B);
title('Sobel gradient');

%Define a threshold value
Thresh=100;
B=max(B,Thresh);
B(B==round(Thresh))=0;
%B=uint8(B);

subplot(2,2,4)
imshow(~B);
title('Edge detected Image');

freq=zeros(256,1);
for i=1:size(B,1)

    for j=1:size(B,2)

        value=B(i,j);

        freq(value+1)=freq(value+1)+1;

    end

end

figure;
subplot(2,1,1)
G = abs(B-X);
imhist(B), title('Histogram- without threshold')
subplot(2,1,2)
imhist(G), title('Histogram difference')
