FROM ros:melodic-ros-core-bionic
RUN apt update
RUN apt -y install python-gtk2-dev python3-pip tmux
RUN apt -y install mesa-utils libgl1-mesa-glx dbus
RUN apt -y install libgtk-3-dev python3-gi gobject-introspection
RUN apt -y install ros-melodic-gazebo-ros-pkgs ros-melodic-gazebo-ros-control ros-melodic-xacro
RUN python3 -m pip install pip --upgrade
RUN python3 -m pip install numpy pandas
RUN python3 -m pip install matplotlib

RUN python3 -m pip install -U rosdep
RUN sudo rosdep init
RUN rosdep update

WORKDIR /home
ENV DISPLAY=host.docker.internal:0.0

# export LIBGL_ALWAYS_INDIRECT=1
