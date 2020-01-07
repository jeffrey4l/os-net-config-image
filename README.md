# Usage

[os-net-config](https://github.com/openstack/os-net-config) image used for generate centos nic configuration

```bash
docker run \
    --detach \
    --net host \
    --privileged \
    --volume $(pwd)/config.yaml:/etc/os-net-config/config.yaml \
    --volume /etc/driverctl.d:/etc/driverctl.d \
    --volume /etc/sysconfig/network-scripts:/etc/sysconfig/network-scripts  \
    --volume /lib/modules:/lib/modules:ro \
    --volume /run/openvswitch:/run/openvswitch \
    --volume /run/systemd:/run/systemd \
    --volume /run/udev/:/run/udev \
    --volume /sys:/sys \
    --volume /var/lib/os-net-config:/var/lib/os-net-config \
    opstool/os-net-config \
    os-net-config -d
```
