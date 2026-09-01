# Windows 11 + Arch Linux Dual Boot Configuration

> [!WARNING] This guide is written specifically for **Windows 11** and has only been tested in that scenario. It has **not** been tested with Windows 10 or any other Windows version — steps, paths, or partition layouts may differ and could cause boot issues. Proceed with caution (and a backup) if using it with a different version.

## 9.1. Make a temporary directory

```bash
sudo mkdir /mnt/win-esp-temp
```

## 9.2 Run `lsblk -f` to find the Windows boot partition path. "/dev/sda1" will be used as an **EXAMPLE**

## 9.3. Mount the windows boot partition in the temporary directory

```bash
sudo mount /dev/sda1 /mnt/win-esp-temp
```

## 9.4. Copy the Windows boot files

```bash
sudo cp -r /mnt/win-esp-temp/EFI/Microsoft /boot/EFI/
```

> [!NOTE]
> This creates a copy of the Windows boot files on the same disk where Arch Linux is installed. Because of this, your UEFI firmware will likely add "Windows Boot Manager" to its boot menu as the first boot option on that disk — meaning your computer may boot straight into Windows instead of showing the systemd-boot selection screen. To fix this, you'll need to reset Arch Linux (systemd-boot) as the first boot option, so the selection screen appears and lets you choose between systems on every boot.

## 9.5. List Check the files

List the Windows boot files:

```bash
sudo ls /boot/EFI/Microsoft/Boot/
```

See if the "bootmgfw.efi" file is listed, if so, the operation was sucessful

## 9.6. Unmount and remove the temporary file

```bash
sudo umount /mnt/win-esp-temp
sudo rmdir /mnt/win-esp-temp
```
