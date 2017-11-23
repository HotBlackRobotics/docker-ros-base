NAME=hbrobotics

cd docker-ros-intel
docker build . -t ${NAME}/ros-base:intel
docker push ${NAME}/ros-base:intel

cd docker-ros-raspberrypi3
docker build . -t ${NAME}/ros-base:rpi3
docker push ${NAME}/ros-base:rpi3 
