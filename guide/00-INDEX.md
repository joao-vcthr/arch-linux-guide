# Arch Linux Installation Guide

| #   | Section                             | Content                                                                                                                      | File                                                                                   |
| --- | ----------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- |
| 1   | System Installation                 | Base system install: partitioning, formatting, bootloader                                                                    | [01-SYSTEM_INSTALLATION.md](01-SYSTEM_INSTALLATION.md)                                 |
| 2   | Drivers and Multimedia              | Video drivers, audio stack, codecs, fonts                                                                                    | [02-DRIVERS_AND_MULTIMEDIA.md](02-DRIVERS_AND_MULTIMEDIA.md)                           |
| 3   | Security Configuration              | Firewall (UFW) and AppArmor                                                                                                  | [03-SECURITY_CONFIGURATION.md](03-SECURITY_CONFIGURATION.md)                           |
| 4   | System Setup                        | Compositor (Hyprland), Shell (Noctalia), Display Manager (SDDM)                                                              | [04-SYSTEM_SETUP.md](04-SYSTEM_SETUP.md)                                               |
| 5   | Graphical Environment               | System updates, mirror optimization, basic services, Windows dual boot, and the extra package repositories (AUR and Flathub) | [05-GRAPHICAL_ENVIRONMENT.md](05-GRAPHICAL_ENVIRONMENT.md)                             |
| 6   | Graphical Environment Configuration | Shell config and fine-tuning                                                                                                 | [06-GRAPHICAL_ENVIRONMENT_CONFIGURATION.md](06-GRAPHICAL_ENVIRONMENT_CONFIGURATION.md) |
| 7   | Applications Installation           | Installing user applications                                                                                                 | [07-APPLICATIONS_INSTALLATION.md](07-APPLICATIONS_INSTALLATION.md)                     |
| 8   | Secure Boot                         | Secure Boot Setup (optional)                                                                                                 | [08-SECURE_BOOT_SETUP.md](08-SECURE_BOOT_SETUP.md)                                     |
| 9   | Dual Boot                           | Dual Boot Setup (optional)                                                                                                   | [09-DUAL_BOOT_SETUP.md](09-DUAL_BOOT_SETUP.md)                                         |

🚧 = section not fully documented yet, placeholder for future content.

---

## About this guide

The files are numbered in the order they should be followed during a fresh install. Each section builds on the previous one, so skipping ahead may cause commands to fail (e.g. installing the graphical environment before drivers are in place).

The Secure Boot appendix is independent of the main sequence — it can be done at any point after the base system is installed, with or without a graphical environment.
