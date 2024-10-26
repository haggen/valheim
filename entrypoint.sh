#!/usr/bin/env sh

if test -n "$1"; then
	bash -c "$@"
	exit 0
fi

export LD_LIBRARY_PATH="./app/linux64:$LD_LIBRARY_PATH"
export SteamAppId="892970"

./valheim_server.x86_64 -nographics -batchmode \
	-name "$VALHEIM_SERVER_NAME" \
	-world "$VALHEIM_SERVER_WORLD" \
	-password "$VALHEIM_SERVER_PASSWORD"

unset -v LD_LIBRARY_PATH SteamAppId