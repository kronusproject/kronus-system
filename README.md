# Kronus System

```shell
systemctl --user start microchip-license-daemon@-opt-microchip.service
```

```shell
MICROCHIP_INSTALL_DIR=/opt/microchip source scripts/env.bash
```

```shell
MICROCHIP_INSTALL_DIR=/opt/microchip LICENSE_SERVER=localhost source scripts/env.bash
```

```shell
make
```

## Toolchain

`scripts/env.bash` expects these under `MICROCHIP_INSTALL_DIR`:

- `Libero_SoC_2025.1`
- `xpack-riscv-none-elf-gcc-15.2.0-1`, the HSS compiler
  (https://xpack-dev-tools.github.io/riscv-none-elf-gcc-xpack/)
- `mpfsBootmodeProgrammer/mpfsBootmodeProgrammer.jar`, which HSS uses to
  make the eNVM hex. It still only ships with SoftConsole, so copy it out of
  a SoftConsole install (`extras/mpfs/`). A system `java` runs it.

Set `XPACK_INSTALL_DIR` or `MPFS_BOOTMODE_PROGRAMMER_JAR` to override either path.

# References

- [Libero SoC Design Suite Help Documentation v2024.2](https://onlinedocs.microchip.com/oxy/GUID-AFCB5DCC-964F-4BE7-AA46-C756FA87ED7B-en-US-14/index.html)
