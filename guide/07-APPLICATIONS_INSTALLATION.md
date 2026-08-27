# 7. Applications Installation

[← Back to index](00-INDEX.md) | [← Previous: Graphical Environment Configuration](06-GRAPHICAL_ENVIRONMENT_CONFIGURATION.md)

List of applications to install (browser, editor, mail client, etc).

**These are just suggestions**

## 7.1. Terminal

Alacritty:
```bash
sudo pacman -S --noconfirm --needed alacritty
```

Foot:
```bash
sudo pacman -S --noconfirm --needed foot
```

Kitty:
```bash
sudo pacman -S --noconfirm --needed kitty
```

## 7.2. File Explorer

Install Nautilus:
```bash
sudo pacman -S --noconfirm --needed nautilus
```

Define as Default File Explorer:
```bash
xdg-mime default org.gnome.Nautilus.desktop inode/directory
xdg-mime default org.gnome.Nautilus.desktop application/x-7z-compressed
xdg-mime default org.gnome.Nautilus.desktop application/zip
```

## 7.3. Browsers

Firefox:
```bash
sudo pacman -S --noconfirm --needed firefox
```

Chromium:
```bash
sudo pacman -S --noconfirm --needed chromium
```

## 7.4. Productivity

Thunderbird:
```bash
sudo pacman -S --noconfirm --needed thunderbird
```

Cosmic Text Editor:
```bash
sudo pacman -S --noconfirm --needed cosmic-text-editor
```

Qalculate:
```bash
flatpak install -y flathub io.github.Qalculate.qalculate-qt #Qalculate
```

Rnote:
```bash
flatpak install -y flathub com.github.flxzt.rnote #Rnote
```

## 7.5 Office Tools

LibreOffice:
```bash
sudo pacman -S --noconfirm --needed libreoffice-fresh
```

Stirling PDF:
```bash
yay -S --noconfirm --needed stirling-pdf-desktop
```

## 7.6. Screen Capture

OBS Studio:
```bash
flatpak install -y flathub com.obsproject.Studio
```

HyprCapture:
```bash
sudo pacman -S --noconfirm --needed cmake pkg-config nlohmann-json layer-shell-qt wl-clipboard
```

```bash
hyprpm update
hyprpm add https://github.com/gfhdhytghd/HyprCapture
hyprpm enable hyprcapture
hyprpm reload
```

## 7.7. Hardware Utils

CoreCtrl (GUI for managing power profiles and overclocking):
```bash
sudo pacman -S --noconfirm --needed corectrl
```

Power Profiles (CLI for managing power profiles):
```bash
sudo pacman -S --noconfirm --needed power-profiles-daemon
```

## 7.8. TUIs

Yazi (Terminal File Explorer):
```bash
sudo pacman -S --noconfirm --needed yazi
```

Btop (System Monitor):
```bash
sudo pacman -S --noconfirm --needed btop
```

## 7.9. CLI Tools (All are recommended)

```bash
sudo pacman -S --noconfirm --needed wget curl fastfetch pacman-contrib
```

## 7.10. Media

VLC (Video Player):
```bash
sudo pacman -S --noconfirm --needed vlc vlc-plugins-all
```

IMV (Image Viewer):
```bash
sudo pacman -S --noconfirm --needed imv
```

MPV (Media Player):
```bash
sudo pacman -S --noconfirm --needed mpv
```

## 7.11. Programming Languages

Clang (C/C++ Compiler):
```bash
sudo pacman -S --noconfirm --needed clang 
```

Java:
```bash
sudo pacman -S --noconfirm --needed jdk-25-openjdk
```

Go:
```bash
sudo pacman -S --noconfirm --needed go
```

Rust:
```bash
bash -c "$(curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs)" -- -y
source "$HOME/.cargo/env"
```

## 7.12. Development Tools

Zed:
```bash
sudo pacman -S --noconfirm --needed zed
```

VSCode:
```bash
yay -S --noconfirm --needed visual-studio-code-bin
```

[Jetbrains Toolbox](https://www.jetbrains.com/toolbox-app/)


### After this you can configure your applications as per your preferences

---

**Optional sections:** [8. Secure Boot Setup →](08-SECURE_BOOT_SETUP.md) | [9. Dual Boot Setup](09-DUAL_BOOT_SETUP.md)
