clc;clf;clear;
x=-8:0.1:8;
y=exercise1(x); 
[x1,y1]=fminbnd('exercise1',0,2);
[x2,y2]=fminbnd('exercise1',4,6);
[x3,y3]= fminunc('exercise1',0);
[x4,y4]= fminunc('exercise1',4);
plot(x,y),hold on
plot(x1,y1,'r*')
plot(x2,y2,'r*')
plot(x3,y3,'go')
plot(x4,y4,'go')
title('Exercise1函数图像')
disp(['在区间 [0, 2] 内的极小值为:x1 = ',num2str(x1),...
                               ',y1 =',num2str(y1)]);
disp(['在区间 [4, 6] 内的极小值为:x2 = ', num2str(x2),...
                               ',y2 =',num2str(y2)]);
disp(['使用fminunc寻找的第一个极小值为:x3 = ',num2str(x3'),...
                               ',y3=',num2str(y3)]);
disp(['使用fminunc寻找的第二个极小值为:x4= ',num2str(x3'),...
                               ',y3=',num2str(y3)]);