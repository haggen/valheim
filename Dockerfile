FROM steamcmd/steamcmd:ubuntu-20

# Install and update Valheim dedicated game server.
RUN steamcmd +verbose +force_install_dir /valheim +login anonymous +app_update 896660 +quit

# Change current directory.
WORKDIR /valheim

# Install Valheim Plus.
ENV VALHEIM_PLUS_VERSION 0.9.9.8
ADD https://github.com/valheimPlus/ValheimPlus/releases/download/$VALHEIM_PLUS_VERSION/UnixServer.tar.gz .
RUN tar xzf UnixServer.tar.gz

# Persist server data and config.
VOLUME ["/root/.config/unity3d/IronGate/Valheim"]
VOLUME ["/valheim/BepInEx/config/valheim_plus.cfg"]

# Expose required ports.
EXPOSE 2456/udp
EXPOSE 2457/udp

# Check if server still running periodically.
HEALTHCHECK --interval=1m --timeout=1s --start-period=10s \
    CMD pidof valheim_server.x86_64

# Install entrypoint script.
COPY entrypoint.sh /

# Reset entrypoint.
ENTRYPOINT ["/entrypoint.sh"]
