# My Valheim dedicated server

## Usage

1. Clone the repository.
2. Create `.env` from `example.env` and change values.
3. Run `docker-compose up`.
4. Import world files, config and lists.

### Recipes

#### Importing world files

Copy everything inside `./worlds` into `/root/.config/unity3d/IronGate/Valheim/worlds` inside the container.

```sh
$ docker copy ./worlds/. valheim_server_1:/root/.config/unity3d/IronGate/Valheim/worlds
```

#### Update Valheim Plus config

Copy file `./valheim_plus.cfg` into `/valheim/BepInEx/config` inside the container.

```sh
$ docker copy ./valheim_plus.cfg valheim_server_1:/valheim/BepInEx/config
```

#### Update game and mods

Update Valheim Plus version in `Dockerfile` and rebuild image.

```sh
$ docker-compose build
```

## References

- https://valheim.plus/documentation/list
- https://valheim.fandom.com/wiki/Valheim_Dedicated_Server
- https://github.com/lloesche/valheim-server-docker
- https://github.com/mbround18/valheim-docker
- https://github.com/steamcmd/docker

## Legal

Apache-2.0 © 2022 Arthur Corenzan
