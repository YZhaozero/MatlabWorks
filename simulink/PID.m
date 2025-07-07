clc;
% 定义传递函数
num = [1 7 24];
den = [1 10 35 50 24];
sys = tf(num, den);

% 设计PID控制器参数
Kp = [10, 20, 5];  % 比例增益
Ki = [3, 10, 1];    % 积分增益
Kd = [2, 2.6, 1];    % 微分增益

% 设置仿真时间
t = 0:0.01:10;

% 阶跃输入信号
u = ones(size(t));

% 创建画布
figure;

% 绘制PID控制器对比曲线
hold on;
% 创建PID控制器
controller = pid(Kp(3), Ki(1), Kd(2));
% 进行PID控制
sys_with_controller = feedback(controller * sys, 1);
% 仿真
[y, ~] = lsim(sys_with_controller, u, t);
% 绘制结果
plot(t, y, 'LineWidth', 1.5);
% for i = 1:3
%     % 创建PID控制器
%     controller = pid(Kp(3), Ki(1), Kd(i));
%     % 进行PID控制
%     sys_with_controller = feedback(controller * sys, 1);
%     % 仿真
%     [y, ~] = lsim(sys_with_controller, u, t);
%     % 绘制结果
%     plot(t, y, 'LineWidth', 1.5);
% end

% 绘制输入信号
plot(t, u, 'k--', 'LineWidth', 1.5);

% 添加标签和图例
xlabel('Time');
ylabel('Output/Input');
title('Step Response with Different PID Controllers');
% legend('Kp = 5, Ki = 3, Kd = 2', 'Kp = 5, Ki = 3, Kd = 10', 'Kp = 5, Ki = 3, Kd = 1', 'Input Signal');
legend('Kp = 5, Ki = 3, Kd = 2.6', 'Input Signal');
grid on;
hold off;
