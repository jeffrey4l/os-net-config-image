docker run \
    --net host \
    --privileged \
    -it \
    -v $(pwd)/config.yaml:/etc/os-net-config/config.yaml \
    -v /etc/sysconfig/network-scripts:/etc/sysconfig/network-scripts  \
    -v /lib/modules:/lib/modules:ro \
    opstool/os-net-config \
    os-net-config -d
