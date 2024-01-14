# Dockerfile for robotframework-browser Library

To execute the Robot test from the local machine, `-v` option can be used to mount the local directory:

`docker run -it --rm -v /mnt/c/Development/robot-scripts/dockertest:/usr/src/robotTests my-robotframework-dockerimage bash -c "robot -d /usr/src/robotTests/results  /usr/src/robotTests/tests"`

`-v /mnt/c/Development/robot-scripts/dockertest:/usr/src/robotTests`: Mounts the local directory ('C:\Development\robot-scripts\dockertest' in this case) into the container.

It is also possible to add `CMD ["robot", "-d", "/usr/src/robotTests/results", "/usr/src/robotTests/tests"]` at the end of the Dockerfile and in that case, the Robot test can be run using the below command:

`docker run -it --rm -v /mnt/c/Development/robot-scripts/dockertest:/usr/src/robotTests my-robotframework-dockerimage`
