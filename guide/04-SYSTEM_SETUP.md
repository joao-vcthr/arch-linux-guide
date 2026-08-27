# 4. System Setup

[← Back to index](00-INDEX.md) | [← Previous: Security Configuration](03-SECURITY_CONFIGURATION.md)

Before the graphical environment, or applications, it's worth getting the base system fully up to date and tuned. This section covers system updates, mirror optimization, a few basic services, Windows dual boot, and the extra package repositories (AUR and Flathub) that later sections depend on.

## 4.1. System Update

```bash
sudo pacman -Syu
```

## 4.2. Mirror Optimization (Reflector)

Reflector finds and ranks the fastest mirrors for your location, which speeds up every install from here on.

```bash
sudo pacman -S --needed --noconfirm reflector
sudo reflector --protocol https --latest 30 --sort rate --number 10 --verbose --save /etc/pacman.d/mirrorlist
```

Optional — keep the mirror list fresh automatically:

```bash
sudo systemctl enable reflector.timer
```

## 4.3. Basic Services

- **TRIM** (recommended for SSDs/NVMe drives):
  ```bash
  sudo systemctl enable fstrim.timer
  ```

- **Time sync** (systemd-timesyncd):
  ```bash
  sudo systemctl enable systemd-timesyncd.service
  sudo timedatectl set-ntp true
  ```

- **DNS**: 
  ```bash
  CONNECTION=$(nmcli -t -f NAME connection show --active | head -n1)

  sudo nmcli connection modify "$CONNECTION" ipv4.dns "1.1.1.1 1.0.0.1"
  sudo nmcli connection modify "$CONNECTION" ipv4.ignore-auto-dns yes
  sudo nmcli connection down "$CONNECTION"
  sudo nmcli connection up "$CONNECTION"
  ```

## 4.5. Extra Repositories

### AUR Helper (yay)

```bash
sudo pacman -S --needed --noconfirm git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

### Flatpak / Flathub

```bash
sudo pacman -S --needed --noconfirm flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

---

**Next section:** [5. Graphical Environment →](05-GRAPHICAL_ENVIRONMENT.md)
