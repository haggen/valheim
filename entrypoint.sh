#!/usr/bin/env sh

if test -n "$1"; then
	bash -c "$@"
	exit 0
fi

./valheim_server.x86_64 -name "$VALHEIM_SERVER_NAME" \
	-world "$VALHEIM_SERVER_WORLD" -password "$VALHEIM_SERVER_PASSWORD"
