# arch-linux-guide

A personal, step-by-step guide for installing Arch Linux from scratch, all the way to a fully working system running Hyprland + Noctalia and my everyday applications.

The guide is paired with shell scripts that automate the steps where automation made sense. My personal dotfiles (Hyprland, Alacritty, etc.) are kept in a separate repository: [dotfiles](https://github.com/joao-vcthr/dotfiles).

## Is this guide for you?

This is a simple, minimalist guide meant to help beginners go from a blank drive to a minimally functional Arch Linux system with Hyprland.

It is **not** a polished, all-in-one Hyprland distribution. There's no installer, no automatic hardware detection, no curated defaults beyond my own preferences, and no ongoing maintenance team behind it.

If you're looking for a more robust, ready-to-use Arch-based Hyprland setup, I'd recommend checking out [Omarchy](https://omarchy.org/) or [CachyOS](https://cachyos.org/) instead — both are excellent, actively maintained projects built for exactly that.

## Important notes

- **Hardware:** this guide is focused on AMD hardware (AMD Ryzen CPUs and AMD Radeon GPUs), with brief callouts where Intel/Nvidia steps differ.
- **Networking:** the guide assumes a wired (Ethernet) internet connection throughout and does not cover Wi-Fi setup.
- **Scope:** the guide is written for a clean installation, not for upgrading or repairing an existing system.

## Structure

The guide is organized like building a house, from the foundation up:

| # | Section | Content |
|---|---|---|
| 1 | System Installation | Base system install: partitioning, formatting, bootloader |
| 2 | Drivers and Multimedia | Video drivers, audio stack, codecs, fonts |
| 3 | Security Configuration | Firewall (UFW) and AppArmor |
| 4 | System Setup | System updates, mirror optimization, basic services, extra repositories (AUR and Flathub) |
| 5 | Graphical Environment | Compositor (Hyprland), Shell (Noctalia), Display Manager (SDDM) |
| 6 | Graphical Environment Configuration | Shell config and fine-tuning |
| 7 | Applications Installation | Installing user applications |
| 8 | Secure Boot | Secure Boot setup (optional) |
| 9 | Dual Boot | Dual boot setup with Windows (optional) |

Each numbered file in `guide/` builds on the previous one — skipping ahead may cause later steps to fail. Sections 8 and 9 are independent appendices that can be done at any point.

## Repository layout

```
.
├── guide/       # step-by-step documentation, one file per section
└── scripts/     # automation scripts, mirroring the guide's structure
```

The `scripts/` folder mirrors the guide's sections (`system-installation/`, `drivers-installation/`, `security/`, `system-setup/`, `graphical-environment/`, `graphical-environment-configuration/`, `applications-installation/`, `applications-configuration/`), plus a `helpers/` folder with shared utility scripts used across the others. Each script includes a short description of its purpose at the top.

## Status

This repository is private and under active development. Follow the numbered order in `guide/00-INDEX.md` for a fresh install.
