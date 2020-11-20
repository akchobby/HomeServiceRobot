#!/bin/sh

path_ws="/home/workspace/catkin_ws"

xterm -e "cd ${path_ws}; source devel/setup.bash; export TURTLEBOT_GAZEBO_WORLD_FILE=${path_ws}/src/HomeServiceRobot/worlds/world/featured_world; roslaunch turtlebot_gazebo turtlebot_world.launch" &

sleep 30
xterm -e "cd ${path_ws}; source devel/setup.bash; roslaunch turtlebot_gazebo gmapping_demo.launch" &

sleep 5
xterm -e "cd ${path_ws}; source devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch" &

sleep 5
xterm -e "cd ${path_ws}; source devel/setup.bash; roslaunch turtlebot_teleop keyboard_teleop.launch"

