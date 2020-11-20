# Home Service Robot
The repo consists of various shell scripts that launch multiple nodes such that a mobile robot can simulate a pick and place action in rviz. All the shell scripts are in the scripts folder.

This is an excercise as a part of the Udacity Robotics Software Engineer Nano degree.

## Concepts

The project covers the major part of an autonomous system design :

* Mapping (SLAM) : mapping your new and unknown environment, using the gmapping package in ROS. The package publishes a 2D occupancy grid map of the environment it has been in. It uses Rao-Blackwellized particle filter for localizing.

* Localization : Using the Adaptive Monte Carlo approach via the acml package in ROS. This method uses particles to localize also. Particle elimination is done using a function that calculates the difference of each particle from the estimate of robot pose.

* Navigation : Using the move_base package in ROS to send the robot to a waypoint. This uses the djiktras algorithm to reach the destination. This algorithm is applied on the 2D occupancy grid generated from the mapping phase to obtain a trajectory.Note that this is only a global planner, ther is also a local planner that allow the robot to deal with the dynamic object in the environment.

# Usage 
* Install the required dependencies as shown below :

```bash
$ sudo apt-get install ros-kinetic-navigation
$ sudo apt-get install ros-kinetic-map-server
$ sudo apt-get install ros-kinetic-move-base
$ sudo apt-get install ros-kinetic-amcl
```

* Clone the repo. Note that the repo uses git submodules to maintain the third party repos. Use the below metioned way to clone the repo correctly.

```
$ git clone --recursive <repo/link>
```
The above is for latest git version, in case of any issue refer this [link](https://stackoverflow.com/questions/3796927/how-to-git-clone-including-submodules)


* After building the repo, to launch the pick and place simulation,run as shown below:

```bash
cd scripts
./home_service.sh
```

Note that the path to the catkin workspace can be modified in the shell scripts according to your systems path by editing the path_ws variable in the shell scripts.

* Note the on running the scripts, the load up is slow as there have been sleeps inserted in the shell scripts so that each system can load properly.

