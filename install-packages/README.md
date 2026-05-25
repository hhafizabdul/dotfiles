# Package Installers

One script per package, plus `install-all.sh` to run everything.

```bash
./install-all.sh
```

Run a single package installer directly when needed:

```bash
./pacman/stow.sh
./aur/brave-bin.sh
```

Hardware, bootloader, GPU, monitor, and database-service packages are intentionally left out unless they are generally useful across machines.
