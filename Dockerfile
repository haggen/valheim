FROM steamcmd/steamcmd:ubuntu-20

# Install and update Valheim dedicated game server.
RUN steamcmd +verbose +force_install_dir /valheim +login anonymous +app_update 896660 +quit

# Change current directory.
WORKDIR /valheim

# Persist server data.
VOLUME ["/root/.config/unity3d/IronGate/Valheim"]

# Expose required ports.
EXPOSE 2456/udp
EXPOSE 2457/udp

# Define environment variables.
ENV LD_LIBRARY_PATH ./linux64
ENV SteamAppId 892970

# Install entrypoint script.
COPY entrypoint.sh /

# Reset entrypoint.
ENTRYPOINT ["/entrypoint.sh"]
