FROM steamcmd/steamcmd:ubuntu-24

# Change working directory.
WORKDIR /root

# Install the latest version of Valheim dedicated game server.
RUN steamcmd +force_install_dir /root/app +login anonymous +app_update 896660 +quit

# Mountpoint for world data.
VOLUME ["/root/.config/unity3d/IronGate/Valheim"]

# Expose required ports.
EXPOSE 2456/udp
EXPOSE 2457/udp

# Check if server still running periodically.
HEALTHCHECK --interval=1m --timeout=1s --start-period=10s \
	CMD pidof valheim_server.x86_64

# Install and set entrypoint script.
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
