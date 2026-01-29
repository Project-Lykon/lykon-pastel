#!/usr/bin/env bash
# shellcheck disable=SC2034

########################################
# Lykon OS — Arch-based (Pastel Edition)
########################################

# ISO identity
iso_name="lykon-pastel"
iso_label="LYKON_PASTEL_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="Lykon OS <https://github.com/Project-Lykon>"
iso_application="Lykon OS Live ISO (Pastel Edition)"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m)"
install_dir="lykon"

# Build configuration
buildmodes=('iso')
bootmodes=(
  'bios.syslinux'
  'uefi.systemd-boot'
)

# Pacman configuration
pacman_conf="pacman.conf"

# Root filesystem image
airootfs_image_type="squashfs"
airootfs_image_tool_options=(
  '-comp' 'xz'
  '-Xbcj' 'x86'
  '-b' '1M'
  '-Xdict-size' '1M'
)

# Bootstrap compression
bootstrap_tarball_compression=(
  'zstd'
  '-c'
  '-T0'
  '--auto-threads=logical'
  '--long'
  '-19'
)

# File permissions inside the live system
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/root/.gnupg"]="0:0:700"

  # Custom helper scripts (optional, keep for future use)
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
)
