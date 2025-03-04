FROM ghcr.io/aica-technology/ros-ws:noetic

RUN sudo apt-get update && sudo apt-get install -y ros-noetic-turtlesim && rm -rf /var/lib/apt/lists/*

WORKDIR /home/${USER}/ros_ws
COPY --chown=${USER} ./turtle_example ./src/turtle_example
RUN /bin/bash -c "source /opt/ros/noetic/setup.bash && catkin_make"
