# Usage

[os-net-config](https://github.com/openstack/os-net-config) image used for generating centos nic configuration

host os requirements

```bash
yum install openvswitch driverctl dpdk
systemctl enable --now openvswitch
```

put `config.yaml` and `mapping.yaml` file in `/etc/os-net-config`. Then run following container

```bash
docker run \
    -it \
    --net host \
    --privileged \
    --volume /etc/os-net-config/:/etc/os-net-config/ \
    --volume /etc/driverctl.d:/etc/driverctl.d \
    --volume /etc/sysconfig/:/etc/sysconfig/ \
    --volume /lib/modules:/lib/modules:ro \
    --volume /run/:/run/ \
    --volume /sys:/sys \
    --volume /var/lib/os-net-config:/var/lib/os-net-config \
    opstool/os-net-config \
    os-net-config -d
```
