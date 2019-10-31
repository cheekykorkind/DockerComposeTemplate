[한국어](README.kr.md)
[日本語](README.jp.md)
# go-windows-gui

## command sequence
### set .env file for host machine volumes permission
- `sh setDotEnv.sh`

### start docker compose
- `docker-compose up -d --build`

### after docker-compose up -d --build
- write terraform template at host machine `./workspace`
- execute terraform template 
  - in docker container
    - `docker exec -it go-windows-gui /bin/sh`
  - outside of docker container
    - `docker exec go-windows-gui rsrc -manifest filebrowser.exe.manifest -o rsrc.syso`
    - `docker exec go-windows-gui GOOS=windows GOARCH=amd64 go build -ldflags="-H windowsgui" -o hello-walk.exe`