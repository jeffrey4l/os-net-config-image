docker run \
    -it \
    --net host \
    --privileged \
    --volume /etc/passwd:/etc/passwd:ro \
    --volume /etc/os-net-config/:/etc/os-net-config/ \
    --volume /etc/driverctl.d:/etc/driverctl.d \
    --volume /etc/sysconfig/:/etc/sysconfig/ \
    --volume /lib/modules:/lib/modules:ro \
    --volume /run/:/run/ \
    --volume /sys:/sys \
    --volume /var/lib/os-net-config:/var/lib/os-net-config \
    opstool/os-net-config \
    os-net-config -d
