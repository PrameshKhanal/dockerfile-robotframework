Dockerfile for Robot Framework Browser Library

To execute the Robot test from the local machine, -v option can be used to mount the local directory:

docker run -it --rm -v /mnt/c/Development/robot-scripts/dockertest:/usr/src/robotTests my-robotframework-dockerimage bash -c "robot --outputdir /usr/src/robotTests/results  /usr/src/robotTests/tests"
