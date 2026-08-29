# 1. System Installation

[← Back to index](00-INDEX.md)

---

## 1.1. Preparing the Installation Environment (Arch ISO)

  - Load your keyboard layout, the Brazilian Portuguese will be used as example. For a list of all keymaps run `localectl list-keymaps`:
    ```bash
    loadkeys br-abnt2
    ```
  
  - Sync the system clock with the network:
    ```bash
    timedatectl set-ntp true
    ```
  
  - Check if clock is synced:
    ```bash
    timedatectl
    ```

## 1.2. Disk Partitioning

  - Run ```lsblk -f``` to get the exact path of the device where you want to create partitions. `/dev/sdb` is used as an **EXAMPLE**.
  - Start the partitioning tool:
    ```bash
    cfdisk /dev/sdb
    ```
  - Create the following partitions:
    1.  **EFI partition:** 512MB (Type: EFI System)
    2.  **Root partition:** remaining space (Type: Linux filesystem)

## 1.3. Formatting the Partitions
  - Run ```lsblk -f``` to get the exact paths of the partitions. `/dev/sdb1` and `/dev/sdb2` are used as an **EXAMPLE**.
  - Format the boot (EFI) partition as FAT32:
    ```bash
    mkfs.fat -F32 /dev/sdb1
    ```
  - Format the root partition as ext4:
    ```bash
    mkfs.ext4 /dev/sdb2
    ```

## 1.4. Mounting the Partitions
  - Run ```lsblk -f``` to get the exact paths of the partitions. `/dev/sdb1` and `/dev/sdb2` are used as an **EXAMPLE**.
  - Mount the root partition:
    ```bash
    mount /dev/sdb2 /mnt
    ```
  - Create the boot directory and mount the EFI partition:
    ```bash
    mkdir /mnt/boot
    mount /dev/sdb1 /mnt/boot
    ```

## 1.5. Installing the Base System

  - Download and install the essential system packages:
    ```bash
    pacstrap -K /mnt base base-devel linux linux-firmware amd-ucode networkmanager ntfs-3g nano
    ```

## 1.6. Generating the Fstab

  - Generate the `fstab` file so partitions mount automatically on boot:
    ```bash
    genfstab -U /mnt >> /mnt/etc/fstab
    ```

## 1.7. Chrooting into the Installed System

  - Switch into the newly installed system's environment:
    ```bash
    arch-chroot /mnt
    ```

## 1.8. Time Zone Configuration

  - Set the [time zone](https://man.archlinux.org/man/extra/perl-datetime-timezone/DateTime::TimeZone::Catalog.3pm.en). `America/Sao_Paulo` is used as an **example**:
    ```bash
    ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
    ```
  - Sync the hardware clock with the system clock:
    ```bash
    hwclock --systohc
    ```

## 1.9. Language and Keyboard Configuration

  - Open the locale configuration file:
    ```bash
    nano /etc/locale.gen
    ```
  - Use the arrow keys to navigate the file and uncomment (remove the leading `#`) the line for your language. Example:
    ```
    en_US.UTF-8 UTF-8
    pt_BR.UTF-8 UTF-8
    ```
  - Save the file with ```Ctrl + O``` -> ```Enter``` and exit nano with ```Ctrl + X```
  - Generate the locales:
    ```bash
    locale-gen
    ```
  - Create the language configuration file:
    ```bash
    echo "LANG=en_US.UTF-8" > /etc/locale.conf
    ```
  - Create the keyboard layout configuration file for the console, 'br-abnt2' is used as an **example**:
    ```bash
    echo "KEYMAP=br-abnt2" > /etc/vconsole.conf
    ```

## 1.10. Network Configuration

  - Set your computer's hostname. Replace `exemplo-arch` with the hostname you prefer:
    ```bash
    echo "exemplo-arch" > /etc/hostname
    ```
  - Edit the hosts file:
    ```bash
    nano /etc/hosts
    ```
  - Add the following lines, replacing `exemplo-arch` with the hostname you set:
    ```
    127.0.0.1    localhost
    ::1          localhost
    127.0.1.1    exemplo-arch.localdomain exemplo-arch
    ```
  - Save the file with ```Ctrl + O``` -> ```Enter``` and exit nano with ```Ctrl + X```
  - Enable the network management service to start with the system:
    ```bash
    systemctl enable NetworkManager
    ```

## 1.11. User Configuration

  - Set a password for the `root` user:
    ```bash
    passwd
    ```
  - Create a new user (replace `username` with your username):
    ```bash
    useradd -m -G wheel username
    ```
  - Set a password for the new user:
    ```bash
    passwd username
    ```
  - Install `sudo`:
    ```bash
    pacman -S sudo
    ```
  - Configure `sudo` permissions for the `wheel` group:
    ```bash
    EDITOR=nano visudo
    ```
  - Uncomment the following line to allow users in the `wheel` group to use `sudo`:
    ```
    # %wheel ALL=(ALL:ALL) ALL
    ```
  - Save the file with ```Ctrl + O``` -> ```Enter``` and exit nano with ```Ctrl + X```

## 1.12. Bootloader Configuration (systemd-boot)

  - Install `systemd-boot` to the EFI partition:
    ```bash
    bootctl --path=/boot install
    ```

  - Create the loader's main configuration file:
    ```bash
    nano /boot/loader/loader.conf
    ```

  - Add the following content:
    ```
    default arch.conf
    timeout 30
    console-mode max
    ```
  - Save the file with ```Ctrl + O``` -> ```Enter``` and exit nano with ```Ctrl + X```
  - Use this command to list device and partition info and find the UUID of the device containing the root mount point:
    ```bash
    lsblk -f
    ```

  - Create the Arch Linux boot entry:
    ```bash
    nano /boot/loader/entries/arch.conf
    ```

  - Add the following content, replace `your-uuid-here` with the actual UUID:
    ```
    title   Arch Linux
    linux   /vmlinuz-linux
    initrd  /amd-ucode.img
    initrd  /initramfs-linux.img
    options root=UUID=your-uuid-here
    ```
  - Save the file with ```Ctrl + O``` -> ```Enter``` and exit nano with ```Ctrl + X```

## 1.13. Finishing the Base Installation

- Exit chroot:
  ```bash
  exit
  ```
- Unmount partitions and devices:
  ```bash
  umount -R /mnt
  ```
- Reboot the system (recommended to remove the installation media):
  ```bash
  reboot
  ```

---

**Next section:** [2. Drivers and Multimedia →](02-DRIVERS_AND_MULTIMEDIA.md)
