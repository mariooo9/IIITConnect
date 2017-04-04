Im = imread('face images.jpg');
subplot(1,2,1);
imshow(Im);
fun = @(block_struct) mean( block_struct.data(:) );  %// anonymous function to get average of a block
B = blockproc(Im,[2 2],fun);                         %// process 2 by 2  blocks
subplot(1,2,2);
imshow(B,[]);     