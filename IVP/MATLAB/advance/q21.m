a=imread('face images.jpg');
subplot(1,2,1);imshow('face images.jpg');
[m,n]=size(a);
b=zeros(m+2,n+2);
for i=2:m + 1
    for j=2:n + 1
        b(i,j)=a(i-1,j-1);
    end
end

for i =2:m+1
    for j=2:n+1
        ele=(b(i,j)+b(i,j+1)+b(i+1,j)+b(i+1,j+1))/4;
        a(i-1,j-1)=ele;
    end
end
subplot(1,2,2);
imshow(a);