I = imread('mario.png');
I = rgb2gray(I);
bw1 = edge(I,'sobel',0.01);
bw2 = edge(I,'canny',0.01);
bw3 = edge(I,'prewitt',0.01);
bw4 = edge(I,'log',0.01);
subplot(2,2,1),imshow(bw1),title('sobel')
subplot(2,2,2),imshow(bw2),title('canny')
subplot(2,2,3),imshow(bw3),title('prewitt')
subplot(2,2,4),imshow(bw4),title('LOG')