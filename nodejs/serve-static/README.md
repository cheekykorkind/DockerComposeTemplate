[한국어](README.kr.md)
[日本語](README.jp.md)
# serve-static

## command sequence
### set .env file for host machine volumes permission
- `sh setDotEnv.sh`

### start docker compose
- `docker-compose up -d --build`

### after docker-compose up -d --build
- work at host machine `./workspace`

### get in docker container
- `docker exec -it serve-static /bin/sh`

<!-- docker images -a | grep "serve-static" | awk '{print $3}' | xargs docker rmi --force -->

<!-- npm init -->
<!-- npm init
npm install express --save 
npm install serve-static --save -->