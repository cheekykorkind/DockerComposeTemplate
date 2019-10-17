[한국어](README.kr.md)
[日本語](README.jp.md)
# ruby 2.6.4

## command sequence
### set .env file for host machine volumes permission
- `sh setDotEnv.sh`

### start docker compose
- `docker-compose up -d --build`

### after docker-compose up -d --build
- write ruby script at host machine `./workspace`
- execute terraform template 
  - in docker container
    - `docker exec -it ruby2-6-4 /bin/bash`
  - outside of docker container
    - `docker exec ruby2-6-4 xxxxxxxxxxx`