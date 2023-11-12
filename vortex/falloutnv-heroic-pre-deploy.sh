#!/usr/bin/env sh
set -euxo pipefail

INIFILES_VORTEX="$HOME/.vortex-linux/compatdata/pfx/drive_c/users/steamuser/Documents/My Games/"
INIFILES_INTERNAL="$HOME/Games/Heroic/Prefixes/Fallout New Vegas Ultimate Edition/pfx/drive_c/users/steamuser/Documents/My Games/FalloutNV/"
INIFILES_EXTERNAL="/run/media/mmcblk0p1/Games/Heroic/Prefixes/Fallout New Vegas Ultimate Edition/pfx/drive_c/users/steamuser/Documents/My Games/FalloutNV/"

if [ -d "$INIFILES_EXTERNAL" ]; then
    ln -sf "$INIFILES_EXTERNAL" "$INIFILES_VORTEX"
#    ln -sf "$INIFILES_EXTERNAL"/Fallout.ini "$INIFILES_VORTEX"/
#    ln -sf "$INIFILES_EXTERNAL"/FalloutPrefs.ini "$INIFILES_VORTEX"/
fi

if [ -d "$INIFILES_INTERNAL" ]; then
    ln -sf "$INIFILES_INTERNAL" "$INIFILES_VORTEX"
#    ln -sf "$INIFILES_INTERNAL"/Fallout.ini "$INIFILES_VORTEX"/
#    ln -sf "$INIFILES_INTERNAL"/FalloutPrefs.ini "$INIFILES_VORTEX"/
fi

sleep 3
