FROM armv7/armhf-ubuntu:16.04

SHELL ["/bin/bash","-c"]

COPY ./qemu-arm-static /usr/bin/qemu-arm-static

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

# install ROS
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
RUN apt-get update && apt-get install --no-install-recommends -y \
    python-rosdep \
    python-rosinstall \
    python-vcstools \
    && rm -rf /var/lib/apt/lists/*


RUN apt-get update && apt-get install -y ros-kinetic-ros-core
# setup entrypoint
COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash"]
