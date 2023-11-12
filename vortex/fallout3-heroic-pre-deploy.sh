#!/usr/bin/env sh
set -euxo pipefail

FALLOUT3GOG_INTERNAL="$HOME/Games/Heroic/Fallout 3/"
FALLOUT3GOG_EXTERNAL="/run/media/mmcblk0p1/Games/Heroic/Fallout 3/"

INIFILES_VORTEX="$HOME/.vortex-linux/compatdata/pfx/drive_c/users/steamuser/Documents/My Games/Fallout3"
INIFILES_INTERNAL="$HOME/Games/Heroic/Prefixes/Fallout 3 Game of the Year Edition/pfx/drive_c/users/steamuser/Documents/My Games/Fallout3"
INIFILES_EXTERNAL="/run/media/mmcblk0p1/Games/Heroic/Prefixes/Fallout 3 Game of the Year Edition/pfx/drive_c/users/steamuser/Documents/My Games/Fallout3"

if [ -d "$INIFILES_EXTERNAL" ]; then
    ln -sf "$INIFILES_EXTERNAL" "$INIFILES_VORTEX"
fi

if [ -d "$INIFILES_INTERNAL" ]; then
    ln -sf "$INIFILES_INTERNAL" "$INIFILES_VORTEX"
fi

sleep 3
