# Usage

[os-net-config](https://github.com/openstack/os-net-config) image used for generate centos nic configuration

```bash
docker run \
    --net host \
    --privileged \
    --detach \
    --volume $(pwd)/config.yaml:/etc/os-net-config/config.yaml \
    --volume /etc/sysconfig/network-scripts:/etc/sysconfig/network-scripts  \
    --volume /lib/modules:/lib/modules:ro \
    opstool/os-net-config \
    os-net-config -d
```
