#!/bin/sh
 

xterm -e "cd $(rospack find add_markers) && cd ../; source ../../devel/setup.bash; export TURTLEBOT_GAZEBO_WORLD_FILE=$(echo $(cd $(rospack find add_markers) && cd ../ && pwd))/worlds/world/featured_world;roslaunch turtlebot_gazebo turtlebot_world.launch" &

sleep 20
xterm -e "cd $(rospack find add_markers) && cd ../; source ../../devel/setup.bash; export TURTLEBOT_GAZEBO_MAP_FILE=$(echo $(cd $(rospack find add_markers) && cd ../ && pwd))/map/maps/my_map.yaml;roslaunch turtlebot_gazebo amcl_demo.launch" &

sleep 30
xterm -e "cd $(rospack find add_markers) && cd ../; source ../../devel/setup.bash; roslaunch add_markers view_navigation.launch" &

sleep 30
xterm -e "cd $(rospack find add_markers) && cd ../; source ../../devel/setup.bash; roslaunch pick_object pick_objects.launch" &




