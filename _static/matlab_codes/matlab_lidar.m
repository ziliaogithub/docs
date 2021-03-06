% ROS initilization
rosinit('192.168.3.16')

% Create an instance of the evarobotCommunicator class, 
% which allows for easy control of the evarobot
evarobot = evarobotCommunicator();

% enable Lidar data
enableLidar(evarobot);
%enableLidar(evarobot, '/lidar');

% If you are running all the lines consecutively, 
% you can pause the script to wait for the subscribers to set up properly.
pause(5);

% get subscribed data
lidar = evarobot.LidarData;

% plot lidar data
lidar.plot

% It is recommended to use rosshutdown once you are done working 
% with the ROS network. Shut down the global node and disconnect from the evarobot.
rosshutdown
