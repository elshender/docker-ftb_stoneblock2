# Feed-The-Beast Presents Stoneblock 2 (Modded Minecraft 1.12) in Docker
To pull the image:
```
docker pull audiohacked/ftb_stoneblock2:stable
```

It's highly recommended run a named data volume:
```
docker volume create minecraft_ftb_stoneblock2_data
docker volume create minecraft_ftb_stoneblock2_backups
```

Then, run the server container:
```
docker run --detach --interactive --tty \
    --name ftb_stoneblock2 \
    --volume minecraft_ftb_stoneblock2_data:/minecraft/world \
    --volume minecraft_ftb_stoneblock2_backups:/minecraft/backups \
    --publish 25565:25565 \
    --env EULA=TRUE \
    audiohacked/ftb_stoneblock2:stable
```
