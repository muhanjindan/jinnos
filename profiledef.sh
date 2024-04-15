#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="jinnos"
iso_label="jinnos$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="jinnos <https://archlinux.org>"
iso_application="jinnos Live/Rescue DVD"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
	'uefi-ia32.grub.esp' 'uefi-x64.grub.esp'
	'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
bootstrap_tarball_compression=(gzip -cn9)
file_permissions=(
	["/etc/shadow"]="0:0:400"
	["/etc/gshadow"]="0:0:400"
	["/root"]="0:0:750"
	["/etc/skel/.config/"]="0:0:755"
	["/etc/skel/.config/bspwm/bspwmrc"]="0:0:755"
	["/etc/skel/.config/sxhkd/sxhkdrc"]="0:0:755"
	["/etc/skel/.conkyrc"]="0:0:755"
	["/etc/skel/.local"]="0:0:755"
	["/etc/skel/.zshrc"]="0:0:755"
	["/etc/skel/.xinitrc"]="0:0:755"
	["/etc/skel/pictures"]="0:0:755"
	["/etc/skel/.bashrc"]="0:0:755"
	["/root/.gnupg"]="0:0:700"
	["/usr/local/bin/choose-mirror"]="0:0:755"
	["/usr/local/bin/Installation_guide"]="0:0:755"
	["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/usr/local/bin/"]="0:0:755" 
)
