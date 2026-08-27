# 5. Graphical Environment

[← Back to index](00-INDEX.md) | [← Previous: System Setup](04-SYSTEM_SETUP.md)

This section covers the three components that make up the graphical environment: the compositor, the shell, and the display manager. They're grouped together because they're installed and enabled as a single continuous step.

## 5.1. Compositor — Hyprland

Install [Hyprland](https://hypr.land/) and the essential components for the graphical environment to work. 

```bash
sudo pacman -S --noconfirm --needed hyprland hyprpaper hyprpolkitagent kitty qt5-wayland qt6-wayland xdg-desktop-portal xdg-desktop-portal-hyprland archlinux-xdg-menu xdg-user-dirs cpio cmake git meson gcc fuse3
```

## 5.2. Shell — Noctalia

Install Noctalia:
```bash
sudo pacman -S --noconfirm --needed noctalia
```

## 5.3. Display Manager — SDDM

Install SDDM:
```bash
sudo pacman -S --noconfirm --needed sddm
```

Enable SDDM Service:
```bash
sudo systemctl enable sddm.service
```

---

## 5.4. Reboot

After installing the full graphical environment (compositor + shell + display manager), reboot the computer:

```bash
sudo systemctl reboot
```

You should land on the SDDM login screen.

---

**Next section:** [6. Graphical Environment Configuration →](06-GRAPHICAL_ENVIRONMENT_CONFIGURATION.md)
