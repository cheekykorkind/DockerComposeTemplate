[한국어](README.kr.md)
[日本語](README.jp.md)
# localstack init by shell script

## create sam project
cd DockerComposeTemplate/localstack/0.11.0/
sam init


### start docker compose without host machine volumes permission problem
- `DOCKER_UNAME=$USER DOCKER_UID=$(id -u $USER) DOCKER_GID=$(id -g $USER) docker-compose up`

### get in localstack container
- `docker exec -it localstack-dev /bin/bash`

### test localstack lambda by aws cli command
```
aws lambda invoke \
	--region us-east-1 \
	--endpoint-url http://localstack:4566 \
    --function-name hello_lambda \
    --payload '{ "name": "Bob" }' \
    response.json
```


