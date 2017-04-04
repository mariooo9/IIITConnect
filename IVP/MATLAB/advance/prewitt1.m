A=imread('face images.jpg');
B=rgb2gray(A);

C=double(B);


for i=1:size(C,1)-2
    for j=1:size(C,2)-2
        %Prewitt mask for x-direction:
        Gx=((1*C(i+2,j+1)+C(i+2,j)+C(i+2,j+2))-(1*C(i,j+1)+C(i,j)+C(i,j+2)));
        %Prewitt mask for y-direction:
        Gy=((1*C(i+1,j+2)+C(i,j+2)+C(i+2,j+2))-(1*C(i+1,j)+C(i,j)+C(i+2,j)));
      
        %The gradient of the image
        %B(i,j)=abs(Gx)+abs(Gy);
        B(i,j)=sqrt(Gx.^2+Gy.^2);
      
    end
end
subplot(2,2,[1,2])
imshow(A);
title('Original Image');

subplot(2,2,3);
imshow(B); title('prewitt gradient');
Thresh=100;
X=max(B,Thresh);
X(X==round(Thresh))=0;

subplot(2,2,4)
imshow(X), title('prewitt- with threshold')

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