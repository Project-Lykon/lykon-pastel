#!/usr/bin/env bash
# shellcheck disable=SC2034

########################################
# Lykon OS — Arch-based (Pastel Edition)
########################################

# ISO identity
iso_name="lykon-pastel"
iso_label="LYKON_PASTEL_$(date -u +%Y%m)"
iso_publisher="Lykon OS <https://github.com/Project-Lykon>"
iso_application="Lykon OS (Pastel Edition)"
iso_version="$(date -u +%Y.%m)"
install_dir="lykon"

# Build configuration
buildmodes=(
  'iso'
)

bootmodes=(
  'bios.syslinux'
  'uefi.systemd-boot'
)

# Pacman configuration
pacman_conf="pacman.conf"

# Root filesystem image
airootfs_image_type="squashfs"

# Squashfs options
# IMPORTANT:
#  - Exclude proc/sys/dev to avoid I/O errors
#  - Prevent undeletable work/ directory
airootfs_image_tool_options=(
  '-comp' 'xz'
  '-b' '1M'
  '-Xdict-size' '1M'
  '-e' 'proc'
  '-e' 'sys'
  '-e' 'dev'
)

# Bootstrap compression
bootstrap_tarball_compression=(
  'zstd'
  '-c'
  '-T0'
  '--long'
  '-19'
)

# File permissions inside the ISO rootfs
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/root/.gnupg"]="0:0:700"

  # Custom helper scripts (only if they exist)
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
)
