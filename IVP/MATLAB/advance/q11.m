I = imread('face images.jpg');
[M N] = size(I)
histM = zeros(2,1);
histL = zeros(2,1);

for i = 1:1:M
    for j = 1:1:N
        msb(i,j) = bitand(I(i,j), 128);
        if msb(i,j) == 0
            msb(i,j) = 0;
            histM(1,1) = histM(1,1) + 1;
        else
            msb(i,j) = 255;
            histM(2,1) = histM(2,1) + 1;
        end
       
        lsb(i,j) = bitand(I(i,j), 1);
        if lsb(i,j) == 0
            lsb(i,j) = 0;
            histL(1,1) = histL(1,1) + 1;
        else
            lsb(i,j) = 255;
            histL(2,1) = histL(2,1) + 1;
        end
    end
end
msb = uint8(msb);
lsb = uint8(lsb);
f = figure;
f.Name = 'LSB'
subplot(2,1,1)
imshow(lsb)
subplot(2,1,2)
stem(histL)
histL
f = figure;
f.Name = 'MSB'
subplot(2,1,1)
imshow(msb)
subplot(2,1,2)
stem(histM)
histM
