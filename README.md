# My Valheim dedicated server

Simple Valheim dedicated server with Valheim Plus running on Docker.

## Usage

1. Clone the repository.
2. Create `.env` from `example.env` and change values.
3. Optionally, import world files and update config. See [Recipes](#Recipes) below.
4. Run `docker-compose up`.

### Recipes

#### Importing world files

Copy your world files into `./data/worlds` before starting the server. New worlds are automatically created.

#### Update admin, banned or permitted lists

Update any of the `txt` files at `./data` and restart the server.

```
docker-compose restart
```

#### Update Valheim Plus config

Update `./config/valheim_plus.cfg` and restart your server.

```
docker-compose restart
```

#### Update game and mods

Update Valheim Plus version in `Dockerfile` and rebuild image.

```sh
$ docker-compose build
```

#### Backups

Simply backup `./data` and `./config` directories.

## References

- https://valheim.plus/documentation/list
- https://valheim.fandom.com/wiki/Valheim_Dedicated_Server
- https://github.com/lloesche/valheim-server-docker
- https://github.com/mbround18/valheim-docker
- https://github.com/steamcmd/docker

## Legal

Apache-2.0 © 2022 Arthur Corenzan
