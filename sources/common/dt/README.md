```shell
dtc -@ -O dtb -o apb-test.dtbo apb-test.dtso
```

```shell
mkdir -p /sys/kernel/config/device-tree/overlays/apb-test
cat apt-test.dtbo > /sys/kernel/config/device-tree/overlays/apb-test/dtbo
```

```shell
cp uio-name.rules /etc/udev/rules.d/
udevadm control --reload
udecadm trigger
```
