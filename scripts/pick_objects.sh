#!/bin/sh
 

path_ws="/home/workspace/catkin_ws"

xterm -e "cd ${path_ws}; source devel/setup.bash; export TURTLEBOT_GAZEBO_WORLD_FILE=${path_ws}/src/worlds/world/myworld_white_ball;roslaunch turtlebot_gazebo turtlebot_world.launch" &

sleep 20
xterm -e "cd ${path_ws}; source devel/setup.bash; export TURTLEBOT_GAZEBO_MAP_FILE=${path_ws}/src/map/maps/my_map.yaml;roslaunch turtlebot_gazebo amcl_demo.launch" &

sleep 15
xterm -e "cd ${path_ws}; source devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch" &

sleep 50
xterm -e "cd ${path_ws}; source devel/setup.bash; roslaunch pick_object pick_objects.launch" &


