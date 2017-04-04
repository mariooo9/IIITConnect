%angle = input('Enter value of angle : ');
angle = 45;
%Degree to radian
rads = pi*angle/180;

img=imread('Image.jpg'); 
subplot(1,2,1);
imshow(img);
[rowsi,colsi,z]= size(img); 

%calculating array dimesions such that  rotated image gets fit in it exactly.
rowsf = ceil(rowsi*abs(cos(rads))+colsi*abs(sin(rads)));                      
colsf = ceil(rowsi*abs(sin(rads))+colsi*abs(cos(rads)));                     

% define an array withcalculated dimensions and fill the array  with zeros ie.,black
C = uint8(zeros([rowsf colsf 3 ]));

%calculating center of original and final image
xo=ceil(rowsi/2);                                                            
yo=ceil(colsi/2);

midx=ceil((size(C,1))/2);
midy=ceil((size(C,2))/2);

for i=1:size(C,1)
    for j=1:size(C,2)                                                       

         x= (i-midx)*cos(rads)+(j-midy)*sin(rads);                                       
         y= -(i-midx)*sin(rads)+(j-midy)*cos(rads);                             
         x=round(x)+xo;
         y=round(y)+yo;

         if (x>=1 && y>=1 && x<=size(img,1) &&  y<=size(img,2) ) 
              C(i,j,:)=img(x,y,:);  
         end
    end
end
subplot(1,2,2);
imshow(C);