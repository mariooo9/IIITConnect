I = rgb2gray(imread('face images.jpg'));

figure; 
subplot(2,3,1);
imshow(I);
title('Original Image');


Mpos = zeros(size(I,1),size(I,2));
Lpos = zeros(size(I,1),size(I,2));

for i = 1:size(I,1)
    for j = 1:size(I,2)
        for bitp = 8:-1:1
            if bitand(I(i,j),2^(bitp-1)) ~= 0
                Mpos(i,j) = bitp - 1;
                break;
            end
        end
        
        for bitp = 1:8
            if bitand(I(i,j),2^(bitp-1)) ~= 0
                Lpos(i,j) = bitp - 1;
                break;
            end
        end
    end
end

MremIm = 2.^Mpos;
LremIm = 2.^Lpos;

subplot(2,3,2);
imshow(uint8(MremIm));
title('MSB');

subplot(2,3,3);
imshow(uint8(LremIm));
title('LSB');

historig = zeros(256,1);
histM = zeros(256,1);
histL = zeros(256,1);

for i = 1:size(I,1)
    for j = 1:size(I,2)
        historig(I(i,j)+1) = historig(I(i,j)+1) + 1;
        histM(MremIm(i,j)+1) = histM(MremIm(i,j)+1) + 1;
        histL(LremIm(i,j)+1) = histL(LremIm(i,j)+1) + 1;
    end
end

subplot(2,3,4);
plot(historig);
title('Original Histogram');

subplot(2,3,5);
plot(histM);
title('MSB Histogram');

subplot(2,3,6);
plot(histL);
title('LSB Histogram');