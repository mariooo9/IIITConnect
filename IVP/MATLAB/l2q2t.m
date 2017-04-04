

I =imread('q.png');
Img = rgb2gray(I);
imshow(Img);
I1 = imcrop(Img,[10 10 275 275] );
% subplot(1,4,1);
% imshow(I1);
I2 = imcrop(Img,[420 80 250 195] );
% subplot(1,4,2);
% imshow(I2);
I3 = imcrop(Img, [75 300 250 360] );
% subplot(1,4,3);
% imshow(I3);
I4 = imcrop(Img,[420 300 250 360] );
% subplot(1,4,4);
% imshow(I4);



%GIM=imread('1.jpg');
%GIm = rgb2gray(GIM);%changing rgb to gray....then only it will convert....
GIm = I1;
numofpixels=size(GIm,1)*size(GIm,2);
subplot(1,2,1);
imshow(GIm);
%figure,imshow(GIm);
title('This is the Original Image');
%This is just the decleration part.......
HIm=uint8(zeros(size(GIm,1),size(GIm,2)));
freq=zeros(256,1);
probf=zeros(256,1);
probc=zeros(256,1);
cum=zeros(256,1);
output=zeros(256,1);

%The probability of each occurrence is calculated by probf. before
%frequency .....
for i=1:size(GIm,1)
    for j=1:size(GIm,2)
        value=GIm(i,j);
        freq(value+1)=freq(value+1)+1;
        probf(value+1)=freq(value+1)/numofpixels;
    end
end


sum=0;
no_bins=255;
%The cumulative distribution probability is calculated. 
for i=1:size(probf)
   sum=sum+freq(i);
   cum(i)=sum;
   probc(i)=cum(i)/numofpixels;
   output(i)=round(probc(i)*no_bins);
end
for i=1:size(GIm,1)
    for j=1:size(GIm,2)
            HIm(i,j)=output(GIm(i,j)+1);
    end
end
subplot(1,2,2);
imshow(HIm);
% figure,imshow(HIm);
title('This is the Histogram equalization');
%The result is shown in the form of a table
figure('Position',get(0,'screensize'));
dat=cell(256,6);

for i=1:256
dat(i,:)={i,freq(i),probf(i),cum(i),probc(i),output(i)};   
end

columnname =   {'Bin', 'Histogram', 'Probability', 'Cumulative histogram','CDF','Output'};
columnformat = {'numeric', 'numeric', 'numeric', 'numeric', 'numeric','numeric'};
columneditable =  [false false false false false false];

t = uitable('Units','normalized','Position',[0.1 0.1 0.4 0.9], 'Data', dat,  'ColumnName', columnname,   'ColumnFormat', columnformat,'ColumnEditable', columneditable,'RowName',[]); 
    subplot(2,2,2); 
    bar(GIm);
    title('Before Histogram equalization');
    subplot(2,2,4);
    bar(HIm);
    title('After Histogram equalization');

