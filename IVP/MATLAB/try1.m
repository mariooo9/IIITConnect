x = linspace(0,2*pi,100);
y = sin(x);
%figure
%plot(x,y,'--')
plot (x,y,':')
stairs ( x,y)
grid on;