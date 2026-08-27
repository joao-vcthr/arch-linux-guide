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
- Appearence
	- Theme Mode: Dark
	- Pallete Source: Community
	- Community Pallete: Breeze
- Wallpaper
	- Transition Duration: 500
- Templates
	- Built-in Templates: Alacritty, Btop
- Dock
	- Enabled: On
	- Auto-Hide: On
	- Reserve Space: Off
	- Launcher Icon: Start
	- Icon Size: 38
- Location
	- Auto-Locate (IP): On
- Power
	- Lock: 300s
	- Screen Off: 600s
- Bar: default
	- Thickness: 28

## 6.3. SDDM Configuration (optional, Go to [SDDM Wiki](https://wiki.archlinux.org/title/SDDM) to learn more)

- Install the dependecies 
```bash
sudo pacman -S --noconfirm --needed qt6-svg qt6-virtualkeyboard qt6-multimedia qt6-multimedia-ffmpeg qt6-declarative qt6-5compat
```
- Install [SDDM Silent theme](https://github.com/uiriansan/SilentSDDM):
	```bash
	git clone -b main --depth=1 https://github.com/uiriansan/SilentSDDM && cd SilentSDDM && ./install.sh
	```
 - Edit .conf file (optional)

---

**Next section:** [7. Applications Installation →](07-APPLICATIONS_INSTALLATION.md)
