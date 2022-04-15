# My Valheim dedicated server

## Usage

1. Clone the repository.
2. `cp example.env .env` and change values.
   - Password is required.
3. (Optional) Import world files and update lists.
   - Copy world files (`.db` and `.fwl`) to `./data/worlds`.
   - If no world files exist they'll be created.
   - Lists are found at `./data` directory.
4. `docker-compose up`.

To update the server you have to rebuild the image, i.e. `docker-compose build`, and restart the server.

## References

- https://valheim.fandom.com/wiki/Valheim_Dedicated_Server
- https://github.com/lloesche/valheim-server-docker
- https://github.com/mbround18/valheim-docker
- https://github.com/steamcmd/docker

## Legal

Apache-2.0 © 2022 Arthur Corenzan
