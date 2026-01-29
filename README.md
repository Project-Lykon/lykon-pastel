# 🐺 Lykon OS — Pastel Edition  
*A minimal, elegant Arch-based Linux distribution with KDE Plasma*

---

## 🚀 About Lykon OS

**Lykon OS** is a modern, Arch-based Linux distribution focused on **minimalism, performance, and refined aesthetics**.  
It is built using **ArchISO**, providing a clean and reproducible system while delivering a carefully curated **KDE Plasma desktop experience** inspired by Archcraft-style simplicity.

The **Pastel Edition** emphasizes soft colors, visual balance, and a distraction-free workflow — without compromising the power and flexibility Arch Linux is known for.

---

## ✨ Key Features

- 🧱 **Arch Linux base** (rolling release, upstream packages)
- 🎨 **Custom Pastel theme** (Lykon branding)
- 🖥️ **KDE Plasma** (minimal & lightweight configuration)
- ⚡ Optimized defaults for performance and usability
- 🔁 Reproducible ISO built with `archiso`
- 🛠️ Designed for developers, power users, and enthusiasts

---

## 🧩 Desktop Environment

- **Desktop:** KDE Plasma  
- **Display Manager:** SDDM (themed)
- **Philosophy:**  
  > Minimal by default, powerful when extended

No unnecessary services, no bloated defaults — only what matters.

---

## 🏗️ Build System

Lykon OS is built using **ArchISO**, ensuring:
- Clean root filesystem
- Explicit package selection
- Transparent customization
- Easy maintenance and updates

The ISO **does not snapshot** an existing system — everything included is intentionally defined.

---

## 📁 Repository Structure

```text
Lykon-Pastel/
├── iso/
│   └── lykon/
│       ├── airootfs/        # Files copied directly into the live system
│       ├── efiboot/         # EFI boot configuration
│       ├── grub/            # GRUB bootloader config
│       ├── packages.x86_64  # Package list
│       └── profiledef.sh    # ISO profile definition
├── README.md
