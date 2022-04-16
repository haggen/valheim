#!/usr/bin/env sh

if test -n "$1"; then
	bash -c "$@"
	exit 0
fi

export LD_LIBRARY_PATH="./linux64:./doorstop_libs"
export LD_PRELOAD="libdoorstop_x64.so"
export SteamAppId="892970"

export DOORSTOP_ENABLE="TRUE"
export DOORSTOP_INVOKE_DLL_PATH="./BepInEx/core/BepInEx.Preloader.dll"
export DOORSTOP_CORLIB_OVERRIDE_PATH="./unstripped_corlib"

./valheim_server.x86_64 -name "$VALHEIM_SERVER_NAME" \
	-world "$VALHEIM_SERVER_WORLD" -password "$VALHEIM_SERVER_PASSWORD"

unset -v LD_LIBRARY_PATH LD_PRELOAD SteamAppId DOORSTOP_ENABLE DOORSTOP_INVOKE_DLL_PATH DOORSTOP_CORLIB_OVERRIDE_PATH