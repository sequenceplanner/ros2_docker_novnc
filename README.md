# ros2_docker_novnc
A dockerfile with novnc web-interface and ROS2 rolling

inside the folder:

```console
docker build -t ros2_novnc .
docker run --rm -it -p 5901:5901 -p 6080:6080 ros2_novnc
```

And then http://localhost:6080/vnc.html?host=localhost&port=6080 in a browser

You can also connect using vsc and remote connection to the container: https://code.visualstudio.com/docs/remote/containers

Inspired by https://github.com/aip-primeca-occitanie/ros-introduction-robmob (for ROS1)
