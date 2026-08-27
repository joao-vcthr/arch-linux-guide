# 2. Drivers and Multimedia

[← Back to index](00-INDEX.md) | [← Previous: System Installation](01-SYSTEM_INSTALLATION.md)

After rebooting and logging in with your user, install the packages that get the hardware working: video, audio, and codecs.

## 2.1. Video Drivers and Tools (AMD)

> The packages below assume an **AMD** GPU with the open-source driver (radeonsi/RADV). For Intel, use `vulkan-intel`. For Nvidia, use the proprietary drivers or `nouveau`.

```bash
sudo pacman -S --needed --noconfirm mesa mesa-utils vulkan-radeon libva-mesa-driver
```

> Optional — 32-bit support (needed for Steam, Wine, etc). Requires the `multilib` repository enabled in `/etc/pacman.conf`:
> ```bash
> sudo pacman -S --needed --noconfirm lib32-mesa lib32-vulkan-radeon
> ```

## 2.2. Audio (PipeWire)

PipeWire replaces traditional PulseAudio and JACK.

```bash
sudo pacman -S --needed --noconfirm pipewire pipewire-alsa pipewire-pulse pipewire-jack wireplumber
```

Enable the services at the user level:

```bash
systemctl --user enable --now pipewire.service pipewire-pulse.socket wireplumber.service
```

## 2.3. Codecs

```bash
sudo pacman -S --needed --noconfirm gst-plugins-good gst-plugins-bad gst-plugins-ugly gst-libav gstreamer ffmpeg
```

## 2.4. Fonts

```bash
sudo pacman -S --needed --noconfirm ttf-jetbrains-mono ttf-jetbrains-mono-nerd ttf-roboto-mono-nerd noto-fonts noto-fonts-emoji noto-fonts-cjk
```

---

**Next section:** [3. Security Configuration →](03-SECURITY_CONFIGURATION.md)
