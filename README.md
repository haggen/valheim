# ![Valheim](valheim.svg)

> Valheim dedicated server on Docker.

## Usage

1. Clone the repository.
2. Create `.env` from `example.env` and change values.
3. Optionally, import world files and update config. See [Recipes](#Recipes) below.
4. Run `docker compose up`.

> ⚠️ Just remember that world files must match the world name.

### Recipes

#### Update server config

Update values at `.env` and restart the server.

```sh
docker compose restart
```

#### Importing world files

Copy your world files into `./data/worlds` before starting the server. New worlds are automatically created.

#### Update admin, banned or permitted lists

Update any of the `txt` files at `./data` and restart the server.

```sh
docker compose restart
```

#### Update game to latest version

Simply rebuild image. It'll always install the latest version.

```sh
docker compose build
```

#### Backups

Simply backup `./data` and `./config` directories.

## References

- <https://valheim.plus/documentation/list>
- <https://valheim.fandom.com/wiki/Valheim_Dedicated_Server>
- <https://github.com/lloesche/valheim-server-docker>
- <https://github.com/mbround18/valheim-docker>
- <https://github.com/steamcmd/docker>

## Legal

Apache-2.0 © 2022 Arthur Corenzan

This project is not created by, affiliated with or sponsored by Iron Gate Studio. Valheim and the Valheim logo are intellectual properties of Iron Gate Studio. All rights are reserved worldwide.
