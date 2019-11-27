[한국어](README.kr.md)
[日本語](README.jp.md)
# dynamodb-admin

## command sequence
### set .env file for host machine volumes permission
- `sh setDotEnv.sh`

### set docker-ccompose file DYNAMO_ENDPOINT for dynamodb-admin
- consider where docker and dynamoDB running.

### start docker compose
- `docker-compose up -d --build`

### after docker-compose up -d --build
- write terraform template at host machine `./workspace`
- execute terraform template 
  - in docker container
    - `docker exec -it dynamodb-admin /bin/sh`