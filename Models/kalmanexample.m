A = [1, 1; 0, 1]; %dynamic of the falling body
B = [1/2; 1]; %dynamic of the falling body
I = eye(2); %identity matrix
C = [1, 0]; %measurment process is given by acquiring directly the position
Q = [0, 0; 0, 0]; %no process noise
R = 1; %assumed covariance of measurment source
g = 1; %assumed gravitational acceleration

%---KALMAN FILTER---

  a_priori_pred_err_cov = R; % covariance of a priori state prediction initialized as the covariance of measurment source
  init_vel = 0; %initial velocity
  init_height = 100; %initial height of fall
  state = [init_height; init_vel]; %initial state
  a_priori_pred = state; %initial a priori state prediction is known and given by initial state
  t =  1:10;               %assuming to observe process each second for 10 seconds
  m  = [100,97.9,94.9,92.7,87.3,81.3,75.8,67.5,59.17,51.1];  %measurment vector
  predicted_values_height = zeros(1,10); %array where store predictions of height
  predicted_values_vel    = zeros(1,10); %array where store predictions of speed
  predicted_covariances   = cell(1,10); %array where store  post prediction error covariance

for i=1:length(t)
  %---PREDICT---
      k = t(i); %actual k is the time t(i)
      a_priori_pred = A*a_priori_pred + B*(-g); %predict state using the only process input, which is always the gravitational acceleration g
      a_priori_pred_err_cov = A*a_priori_pred_err_cov*A' + Q; %compute a priori prediction error covariance
  %---PREDICT---
  
  %---UPDATE---
        update_with = m(i);
        kalman_gain = (a_priori_pred_err_cov * C') * inv(C*a_priori_pred_err_cov*C' + R); %compute kalman gain matrix
        post_prediction = a_priori_pred + kalman_gain * (update_with - C * a_priori_pred); %update prediction with actual measurment
        post_pred_err_cov = (I - kalman_gain * C) * a_priori_pred_err_cov; %compute post prediction error covariance
        predicted_values_height(i) = post_prediction(1); %store post_prediction height in array
        predicted_values_vel(i)    = post_prediction(2); %store post_prediction speed  in array
        predicted_covariances{i}   = post_pred_err_cov;  %store post_pred_err_cov in array
  %---UPDATE---
endfor
%---KALMAN FILTER---
real_values_height = zeros(10,1);
for i=1:length(t)
  real_values_height(i) = -0.5*g*t(i)^2 + init_height; %real values of height are given by y(t) = -0.5*g*t^2 + y(0)
end


figure;
plot(t,real_values_height,'DisplayName','Real Height Values','-mo');
hold on;
plot(t,predicted_values_height,'DisplayName','Predicted Height Values','-bo')
legend(gca,'show');

real_values_vel = zeros(10,1);
for i=1:length(t)
  real_values_vel(i) = -g*t(i); %real values of speed are given by y'(t) = -g*t
end

figure;
plot(t,real_values_vel,'DisplayName','Real Speed Values','-mo');
hold on;
plot(t,predicted_values_vel,'DisplayName','Predicted Speed Values','-bo')
legend(gca,'show');

for i=1:length(t)
  disp(['t: ' num2str(t(i)), ' True Height : ', num2str(real_values_height(i)),...
         ' Measurment: ', num2str(m(i)), ...
         ' Predicted Height: ', num2str(predicted_values_height(i)),...
         ' True Speed: ', num2str(real_values_vel(i)),...
         ' Predicted Speed: ', num2str(predicted_values_vel(i))]);
endfor

for i=1:length(t)
  disp(['Estimate of prediction error covariance at time step ', num2str(t(i)) , ':']);
  disp(num2str(predicted_covariances{i}));
endfor