# Windows 11 + Arch Linux Dual Boot Configuration

> [!WARNING] This guide is written specifically for **Windows 11** and has only been tested in that scenario. It has **not** been tested with Windows 10 or any other Windows version — steps, paths, or partition layouts may differ and could cause boot issues. Proceed with caution (and a backup) if using it with a different version.

## 9.1. Mount a temporary directory

```bash
sudo mkdir /mnt/win-esp-temp
```

## 9.2. Mount the windows boot partition in the temporary directory

```bash
sudo mount /dev/sda1 /mnt/win-esp-temp
```

## 9.3. Copy the Windows boot files

```bash
sudo cp -r /mnt/win-esp-temp/EFI/Microsoft /boot/EFI/
```

## 9.4. List Check the files

List the Windows boot files:

```bash
ls /boot/EFI/Microsoft/Boot/
```

See if the "bootmgfw.efi" file is listed, if so, the operation was sucessful

## 9.5. Unmount and remove the temporary file

```bash
sudo umount /mnt/win-esp-temp
sudo rmdir /mnt/win-esp-temp
```
