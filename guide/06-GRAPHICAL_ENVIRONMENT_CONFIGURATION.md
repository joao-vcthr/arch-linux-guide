# 6. Graphical Environment Configuration

[← Back to index](00-INDEX.md) | [← Previous: Graphical Environment](05-GRAPHICAL_ENVIRONMENT.md)

Fine-tuning once the compositor, shell, and display manager are all up and running:

- Hyprland configuration (`hyprland.conf`, keybinds, monitors)
- Noctalia configuration (themes, panels, shortcuts)
- SDDM configuration (theming and customization)
## 6.1. Hyprland Configuration (Go to [Hyprland Wiki](https://wiki.hyprland.org/) to learn more)

* create your hyprland configuration files at ~/.config/hypr or [clone this config](https://github.com/joao-vcthr/hypr-conf)
* Reboot the system

## 6.2. Noctalia Configuration

Some suggestions for configuring Noctalia:

### Appearance

In this section you can change your theme mode (Dark, Light, etc.), your shell colors (Palette Colors), fonts, animations, and so on.

### Wallpaper

In this section you can change your wallpaper settings such as wallpaper transition duration, effects, wallpaper rotation, and much more.

### Templates

In this section you can add template themes to other apps so they can match your Noctalia visual identity.

### Dock

In this section you can enable and set up your Noctalia dock. By default it stays on the bottom of your screen, but you can change the position, enable or disable auto-hide, toggle the launch button, and more.

### Power

In this section you can set up a lot of power-related options, especially "idle behaviors" like locking the system, turning off the screen, and suspending after some time.


## 6.3. SDDM Configuration (optional, Go to [SDDM Wiki](https://wiki.archlinux.org/title/SDDM) to learn more)

- Install the dependencies 
```bash
sudo pacman -S --noconfirm --needed qt6-svg qt6-virtualkeyboard qt6-multimedia qt6-multimedia-ffmpeg qt6-declarative qt6-5compat
```
- Install [SilentSDDM theme](https://github.com/uiriansan/SilentSDDM):
```bash
git clone -b main --depth=1 https://github.com/uiriansan/SilentSDDM && cd SilentSDDM && ./install.sh
```
 - Edit .conf file (optional)

---

**Next section:** [7. Applications Installation →](07-APPLICATIONS_INSTALLATION.md)
