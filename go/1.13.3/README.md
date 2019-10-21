[한국어](README.kr.md)
[日本語](README.jp.md)
# go1.13.3

## command sequence
### set .env file for host machine volumes permission
- `sh setDotEnv.sh`

### start docker compose
- `docker-compose up -d --build`

### after docker-compose up -d --build
- write terraform template at host machine `./workspace`
- execute terraform template 
  - in docker container
    - `docker exec -it go-1-13-3 /bin/bash`
  - outside of docker container
    - `docker exec go-1-13-3 go run main.go`