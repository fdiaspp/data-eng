# POSTGRES with OMDB data Loaded

First time you are running this container, do the following:
1. build the image
2. run a container based on this image
3. executing the following command:
```sh
docker exec <database-container-id> bash -c "./import_data.sh"
```