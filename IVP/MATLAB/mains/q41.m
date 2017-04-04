% create a new figure to show the image . 
    Img = imread('mario.png');
    I = rgb2gray(Img);
    size(I);
    
    figure;
    imshow(Img);
    title('Original Image');
    
    BW = edge(I,'sobel',0.01) ;
    figure;
    subplot(2,2,1);
    imshow(BW);
    title('Sobel Filter');
    
    bw2 = edge(I,'prewitt',0.01);
    subplot(2,2,2);
    imshow(bw2);
    title('Perwitt Filer');
    
    bw3 = edge(I,'canny',0.01);
    subplot(2,2,3);
    imshow(bw3);
    title('Canny Filer');
    
    bw4 = edge(I,'log',0.01);
    subplot(2,2,4);
    imshow(bw4);
    title('LOG Filer');
    
    
    
    
    