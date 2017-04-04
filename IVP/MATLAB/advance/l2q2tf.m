Image = imread('image.png');
image1 = imcrop(img,[16.5 16.5 440 316]);
image2 = imcrop(img,[480.5 2.5 353 344]);
image3 = imcrop(img,[17.5 376.5 442 331]);
image4 = imcrop(img,[480.5 353.5 395 396]);

numofpixels = size(image1,1)*size(image1,2);

Final_Image1 = uint8(zeros(size(image1,1),size(image1,2)));
Final_Image2 = uint8(zeros(size(image2,1),size(image2,2)));
Final_Image3 = uint8(zeros(size(image3,1),size(image3,2)));
Final_Image4 = uint8(zeros(size(image4,1),size(image4,2)));

freq1   = zeros(256,1);
%disp(size(freq));
probf  = zeros(256,1);
probc  = zeros(256,1);
cum    = zeros(256,1);
output1 = zeros(256,1);
%freq counts the occurrence of each pixel value.

%The probability of each occurrence is calculated by probf.
for i = 1:size(image1,1)
    for j = 1:size(image1,2)
        value = image1(i,j);
        freq1(value+1) = freq1(value+1)+1;
        probf(value+1) = freq1(value+1)/numofpixels;
    end
end
sum = 0;
no_bins = 255;
%The cumulative distribution probability is calculated.
for i = 1:size(probf)
   sum       = sum+freq(i);
   cum(i)    = sum;
   probc(i)  = cum(i)/numofpixels;
   output1(i) = round(probc(i)*no_bins);
end



%Histogram distribution
for i = 1:size(image1,1)
    for j = 1:size(image1,2)
        Final_Image1(i,j) = output1(image1(i,j)+1);
    end
end

% ################ for image2 ######################
freq2   = zeros(256,1);
%disp(size(freq));
probf  = zeros(256,1);
probc  = zeros(256,1);
cum    = zeros(256,1);
output2 = zeros(256,1);
%freq counts the occurrence of each pixel value.

%The probability of each occurrence is calculated by probf.
for i = 1:size(image2,1)
    for j = 1:size(image2,2)
        value = image2(i,j);
        freq2(value+1) = freq2(value+1)+1;
        probf(value+1) = freq2(value+1)/numofpixels;
    end
end
sum = 0;
no_bins = 255;
%The cumulative distribution probability is calculated. 
for i = 1:size(probf)
   sum       = sum+freq(i);
   cum(i)    = sum;
   probc(i)  = cum(i)/numofpixels;
   output2(i) = round(probc(i)*no_bins);
end

%Histogram distribution
for i = 1:size(image2,1)
    for j = 1:size(image2,2)
        Final_Image2(i,j) = output2(image2(i,j)+1);
    end
end

% ################ for image3 ######################
freq3   = zeros(256,1);
%disp(size(freq));
probf  = zeros(256,1);
probc  = zeros(256,1);
cum    = zeros(256,1);
output3 = zeros(256,1);
%freq counts the occurrence of each pixel value.

%The probability of each occurrence is calculated by probf.
for i = 1:size(image3,1)
    for j = 1:size(image3,2)
        value = image3(i,j);
        freq3(value+1) = freq3(value+1)+1;
        probf(value+1) = freq3(value+1)/numofpixels;
    end
end
sum = 0;
no_bins = 255;
%The cumulative distribution probability is calculated. 
for i = 1:size(probf)
   sum       = sum+freq(i);
   cum(i)    = sum;
   probc(i)  = cum(i)/numofpixels;
   output3(i) = round(probc(i)*no_bins);
end

%Histogram distribution
for i = 1:size(image3,1)
    for j = 1:size(image3,2)
        Final_Image3(i,j) = output3(image3(i,j)+1);
    end
end

% ################ for image4 ######################
freq4   = zeros(256,1);
%disp(size(freq));
probf  = zeros(256,1);
probc  = zeros(256,1);
cum    = zeros(256,1);
output4 = zeros(256,1);
%freq counts the occurrence of each pixel value.

%The probability of each occurrence is calculated by probf.
for i = 1:size(image4,1)
    for j = 1:size(image4,2)
        value = image4(i,j);
        freq4(value+1) = freq4(value+1)+1;
        probf(value+1) = freq4(value+1)/numofpixels;
    end
end
sum = 0;
no_bins = 255;
%The cumulative distribution probability is calculated. 
for i = 1:size(probf)
   sum       = sum+freq(i);
   cum(i)    = sum;
   probc(i)  = cum(i)/numofpixels;
   output4(i) = round(probc(i)*no_bins);
end

%Histogram distribution
for i = 1:size(image4,1)
    for j = 1:size(image4,2)
        Final_Image4(i,j) = output4(image4(i,j)+1);
    end
end

figure
subplot(2,2,1);
plot(freq1)
title('Image1');
subplot(2,2,2);
plot(freq2)
title('Image2');
subplot(2,2,3);
plot(freq3)
title('Image3');
subplot(2,2,4);
plot(freq4)
title('Image4');


figure
subplot(2,2,1);
imshow(image1);
title('Image1');

%subplot(4,2,2);
%imshow(Final_Image1);
%title('Final Image1');

subplot(2,2,2);
imshow(image2);
title('Image2');

%subplot(4,2,4);
%imshow(Final_Image2);
%title('Final Image2');

subplot(2,2,3);
imshow(image3);
title('Image3');

%subplot(4,2,6);
%imshow(Final_Image3);
%title('Final Image3');

subplot(2,2,4);
imshow(image4);
title('Image4');

%subplot(4,2,8);
%imshow(Final_Image4);
%title('Final Image4');