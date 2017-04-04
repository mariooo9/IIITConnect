%cd is used to change directories
%ls is used to list directory content
%save('filename'); is used to save workspace
%load('filename')l is used to load workspace
%vec = input('Enter a vector\n');
%disp(vec);
i = imread('scene.jpg');
subplot(3,3,1);
imshow(i);
title('original');
subplot(3,3,2);
imshow(single(i));
title('colouredsingle');
subplot(3,3,3);
imshow(double(i));
title('coloureddouble');
subplot(3,3,4);
imshow(uint8(i));
title('coloureduint8');
i2 = rgb2gray(i);
subplot(3,3,5);
imshow(int8(i2));
title('int8');
subplot(3,3,6);
imshow(im2uint16(i2));
title('uint16');
subplot(3,3,7);
imshow(im2int16(i2));
title('int16');
subplot(3,3,8);
imshow(im2single(i2));
title('single');
subplot(3,3,9);
imshow(im2double(i2));
title('double');
array = zeros(10,8);
disp('Here is the 10X10 array');
disp(array);
disp('The first 8 rows and 4 columns of the 10X10 array are :');
disp(array(1,4));
disp(size(array));
if(4>10)
    disp('True True');
else
    disp('False False');
end
fprintf('\n\n');
a = 5;
% while loop execution 
while( a < 11 )
  fprintf('Value of a is %d\n', a);
  a = a + 1;
end
fprintf('\n\n');
% for loop execution 
for a = 5:-1:1
  if(a == 2)
      disp('break');
      break;
  end
  fprintf('value of a: %d\n', a);
end
save('saver');

imwrite(i,'/root/Documents/MATLAB/mango/test3.png');
