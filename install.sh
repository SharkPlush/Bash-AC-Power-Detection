#!/bin/bash
# Created by SharkPlush on GitHub
# https://github.com/SharkPlush
# Copyright 2025-2026 SharkPlush
# Licensed under CC BY-NC 4.0 with attribution & change-indication requirements permanently waived by the author.
# No credit or change log required (appreciated though). Commercial use still forbidden.
# Full license: https://github.com/SharkPlush/Bash-AC-Power-Detection/blob/main/LICENSE
# Report any issues to https://github.com/SharkPlush/Bash-AC-Power-Detection/issues with logs.
set -euo pipefail
# Check if script is already installed.
if [ -f "/usr/local/bin/ac-detect" ]; then
	printf "'/usr/local/bin/ac-detect' already exists.\n"
	exit 2
fi
# Check for sudo perms.
if [ "$EUID" -ne 0 ]; then
	printf "This installer must be run with sudo privileges.\n"
	exit 1
fi
# Install script.
if ! cat > "/usr/local/bin/ac-detect" << 'EOF'; then
#!/bin/bash
# Created by SharkPlush on GitHub
# https://github.com/SharkPlush
# Copyright 2025-2026 SharkPlush
# Licensed under CC BY-NC 4.0 with attribution & change-indication requirements permanently waived by the author.
# No credit or change log required (appreciated though). Commercial use still forbidden.
# Full license: https://github.com/SharkPlush/Bash-AC-Power-Detection/blob/main/LICENSE
# Report any issues to https://github.com/SharkPlush/Bash-AC-Power-Detection/issues with logs.
set -euo pipefail
if ! systemd-ac-power; then
	printf "Device is unplugged waiting for AC power..\n"
	{ udevadm monitor --subsystem-match=power_supply -p -k & sleep 0.01; systemd-ac-power -v || true; } | grep -m1 -qE "POWER_SUPPLY_ONLINE=1|yes"
fi
printf "Device is plugged in.\n"
EOF
	# If /usr/local/bin isnt writable inform user.
	printf "Could not write to '/usr/local/bin' it might be read-only.\n"
	exit 1
fi
# Script should be owned by root and read-only.
chown root:root /usr/local/bin/ac-detect
chmod 555 /usr/local/bin/ac-detect
printf "Successfully installed Bash-AC-Power-Detection\n"
exit 0
