#!/bin/sh
# this launches the world ( gazebo and rviz, as the launch has rviz as well)
xterm -e " source /home/workspace/catkin_ws/devel/setup.bash; roslaunch slam_project udacity_world.launch; " &
sleep 5
# this launches the keyboard teleop 
xterm -e " source /home/workspace/catkin_ws/devel/setup.bash; roslaunch slam_project teleop.launch;" &
sleep 5
# this launches the mapping.launch
xterm -e " source /home/workspace/catkin_ws/devel/setup.bash; roslaunch slam_project mapping.launch;" &
sleep 5