# paintools-docker

Based on [**PainTools**](https://www.moddb.com/games/painkiller/downloads/paintools) by XDavidXtreme.

How to:

```
docker build -t localhost/paintools:v1 .
docker run --rm -v "$(pwd)":/data localhost/paintools:v1 /data/Folder_to_Pack_or_Unpack
```
