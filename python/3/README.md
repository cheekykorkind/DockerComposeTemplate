[한국어](README.kr.md)
[日本語](README.jp.md)
# python3

## command sequence
### set .env file for host machine volumes permission
- `sh setDotEnv.sh`

### start docker compose
- `docker-compose up -d --build`

### after docker-compose up -d --build
- work at host machine `./workspace`

### get in docker container
- `docker exec -it python3 /bin/sh`