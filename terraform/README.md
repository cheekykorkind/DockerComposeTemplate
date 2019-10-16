[한국어](README.kr.md)
[日本語](README.jp.md)
# amazon linux2 with terraform

## command sequence
### set .env file for host machine volumes permisson
- `sh setDotEnv.sh`

### start docker compose
- `docker-compose up -d --build`

### after docker-compose up -d --build
- write terraform template at host machine `./workspace`
- execute terraform template 
  - in docker container
    - `docker exec -it terraform /bin/bash`
  - outside of docker container
    - `docker exec terraform xxxxxxxxxxx`