#!/bin/sh

xterm -e "cd $(rospack find add_markers) && cd ../; source ../../devel/setup.bash; export TURTLEBOT_GAZEBO_WORLD_FILE=$(echo $(cd $(rospack find add_markers) && cd ../ && pwd))/worlds/world/featured_world;roslaunch turtlebot_gazebo turtlebot_world.launch" &

sleep 30
xterm -e "cd ${path_ws}; source devel/setup.bash; roslaunch turtlebot_gazebo gmapping_demo.launch" &

sleep 5
xterm -e "cd ${path_ws}; source devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch" &

sleep 5
xterm -e "cd ${path_ws}; source devel/setup.bash; roslaunch turtlebot_teleop keyboard_teleop.launch"

