t = linspace(0, 2*pi, 100); 
s = linspace(0, 2*pi, 100);
[S,T]=meshgrid(s,t);
x=cos(S).*cos(T)/3;
y=cos(S).*sin(T)/4;
z=sin(S)/2;
subplot(2,2,1);
h=mesh(x,y,z);
view(3)
subplot(2,2,2);
h=mesh(x,y,z);
view([0,0,1])
title("俯视图"),xlabel("x"),ylabel("y")
subplot(2,2,3);
h=mesh(x,y,z);
view([0,1,0])
title("正视图"),xlabel("x"),zlabel("z")
subplot(2,2,4);
h=mesh(x,y,z);
view([1,0,0])
title("侧视图"),ylabel("y"),zlabel("z")