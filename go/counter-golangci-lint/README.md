[한국어](README.kr.md)
[日本語](README.jp.md)
# counter-golangci-lint

## command sequence
### set .env file for host machine volumes permission
- `sh setDotEnv.sh`

### set docker-ccompose file volumes for fixing golangci-lint issue
- consider where is best choice about golangci-lint issue

### start docker compose
- `docker-compose up -d --build`

### after docker-compose up -d --build
- write terraform template at host machine `./workspace`
- execute terraform template 
  - in docker container
    - `docker exec -it counter-golangci-lint /bin/bash`
    - `goimports -w hello.go`
