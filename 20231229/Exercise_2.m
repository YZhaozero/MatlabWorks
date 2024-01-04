clc;clf;clear;
[x,y]=meshgrid(-10:0.1:10,-10:0.1:10);
z = 3.*(1-x).^2.*exp(-(x.^2) - (y+1).^2) -...
    10.*(x/5 - x.^3 - y.^5).*exp(-x.^2-y.^2)- ...
    1/3.*exp(-(x+1).^2 - y.^2);
mesh(x,y,z), hold on

[x, z] = fminunc('peaks', [0.5, -2]);
plot3(x(1),x(2),z,'r*')
title('Peaks 函数的 3D 曲面,及极小值显示')

% 显示结果
disp(['在[0.5, -2]最小值点为：x = ', num2str(x(1)),...
                        ',y = ', num2str(x(2))]);
disp(['在[0.5, -2]最小值为： z = ', num2str(z)]);
