# 3. Security Configuration

[← Back to index](00-INDEX.md) | [← Previous: Drivers and Multimedia](02-DRIVERS_AND_MULTIMEDIA.md)

A simple security setup: firewall (UFW) and mandatory access control (AppArmor).

## 3.1. Firewall (UFW)

> Run one command at a time.

```bash
sudo pacman -S --needed --noconfirm ufw
sudo systemctl enable --now ufw.service
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
```

## 3.2. AppArmor

```bash
sudo pacman -S --needed --noconfirm apparmor
```

```bash
sudo systemctl enable apparmor
```

```bash
sudo systemctl start apparmor
```

---

**Next section:** [4. System Setup →](04-SYSTEM_SETUP.md)
