# 8. Secure Boot Configuration

[← Back to index](00-INDEX.md)

> [!NOTE]
> 1. **While Arch Linux can run with Secure Boot enabled, a third-party tool called [sbctl](https://github.com/Foxboron/sbctl) is required to configure Secure Boot and manage keys.**
> 2. **While Arch Linux can run in dual boot with Windows 11, this guide does NOT cover that scenario.**
> 3. **Secure Boot works fine for Windows 11 in both 'Standard' and 'Custom/Setup' mode, but be aware that clearing existing Secure Boot keys can cause boot issues with Windows if it's already installed.**
> 4. **UEFI is sometimes called 'BIOS'.**

This is optional and independent of the main sequence — it can be done at any point after the system (with or without a graphical environment) is already up and running.

## 8.1. UEFI Preparation

- Go to your UEFI/BIOS settings.
- Switch the "Secure Boot" option to **Custom/Setup** mode.
- Clear the existing Secure Boot keys (option like "Clear All Secure Boot Keys").

## 8.2. Setting Up Secure Boot with sbctl

- Install the `sbctl` tool:
  ```bash
  sudo pacman -S sbctl
  ```

- Check Secure Boot status:
  ```bash
  sudo sbctl status
  ```
- Confirm the 'Setup Mode' field shows 'Enabled'
- Create new signing keys:
  ```bash
  sudo sbctl create-keys
  ```

- Enroll the keys into UEFI:
  ```bash
  sudo sbctl enroll-keys -m
  ```

- Sign the required boot files:
  ```bash
  sudo sbctl sign -s /boot/EFI/BOOT/BOOTX64.EFI
  sudo sbctl sign -s /boot/EFI/systemd/systemd-bootx64.efi
  sudo sbctl sign -s /boot/vmlinuz-linux
  ```

- Verify that the files are signed correctly:
  ```bash
  sudo sbctl verify
  ```

- Check the final status:
  ```bash
  sudo sbctl status
  ```

- Reboot the system:
  ```bash
  sudo systemctl reboot
  ```

---

[← Back to index](00-INDEX.md)
