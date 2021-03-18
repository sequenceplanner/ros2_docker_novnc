# ros2_docker_novnc
A dockerfile with novnc web-interface and ROS2 rolling

inside the folder:

```console
docker build -t ros2_novnc .
docker run --rm -it -p 5901:5901 -p 6080:6080 ros2_novnc
```
