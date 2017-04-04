% create a new figure to show the image . 
    img = imread('Earth.jpg');
   	subplot(3,2,[1,2]);
    imshow(img); title('original')
    
     % create laplacian filter. 
    L = fspecial('laplacian',0.9);
    WL = fspecial('laplacian');
    
     % apply laplacian filter. 
    Limg = imfilter(img,L);
    subplot(3,2,3);
    imshow(Limg);
    title('Laplacian with scaling')
    
    jm = Limg - img;
    jm = img + jm;
    subplot(3,2,4);
    imshow(jm);
    title('mask + original')
    
    wscale =  imfilter(img,WL);
    subplot(3,2,5); 
    imshow(wscale); 
    title('Laplacian without scaling')
    
    jm = wscale - img;
    jm = img + jm;
    subplot(3,2,6);
    imshow(jm);
    title('mask + original without scale')
    