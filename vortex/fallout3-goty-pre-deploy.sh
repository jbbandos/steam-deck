#!/usr/bin/env sh
set -euxo pipefail


APPDATA_INTERNAL="$HOME/.local/share/Steam/steamapps/compatdata/22370/pfx/drive_c/users/steamuser/AppData/Local/Fallout3/"
APPDATA_EXTERNAL="/run/media/mmcblk0p1/steamapps/compatdata/22370/pfx/drive_c/users/steamuser/AppData/Local/Fallout3/"


INIFILES_VORTEX="$HOME/.vortex-linux/compatdata/pfx/drive_c/users/steamuser/Documents/My Games/Fallout3"
INIFILES_INTERNAL="$HOME/.local/share/Steam/steamapps/compatdata/22370/pfx/drive_c/users/steamuser/Documents/My Games/Fallout3"
INIFILES_EXTERNAL="/run/media/mmcblk0p1/steamapps/compatdata/22370/pfx/drive_c/users/steamuser/Documents/My Games/Fallout3"

if [ -d "$INIFILES_EXTERNAL" ]; then
    ln -sf "$INIFILES_EXTERNAL" "$INIFILES_VORTEX"
fi

if [ -d "$INIFILES_INTERNAL" ]; then
    ln -sf "$INIFILES_INTERNAL" "$INIFILES_VORTEX"
fi

sleep 3
