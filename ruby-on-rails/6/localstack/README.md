[한국어](README.kr.md)
[日本語](README.jp.md)
# localstack

# command sequence
- `cd server/docker/development/`

- If you do not set .env file, execute.
  - `sh setDotEnv.sh`

- If you do not have db, execute.
  - `docker exec web rake db:create`

- `docker-compose up -d --build`

- `docker exec web rails generate controller Welcome index`
- `docker attach web`
- If you finish debug, execute.
  - remove `byebug` in your code
  - at console input and enter : `exit`
  - at console press : `Ctrl+P` and `Ctrl+Q`

## lambda
```
aws lambda create-function \
  --profile localstack \
  --endpoint-url http://localhost:4574 \
  --region ap-northeast-1 \
  --function-name my-function \
  --runtime python3.7 \
  --handler hello.lambda_handler \
  --zip-file fileb://hello.zip \
  --role r1
```

```
aws lambda invoke \
  --profile localstack \
  --endpoint-url http://localhost:4574 \
  --function-name my-function \
  --payload '{"key1":"value1", "key2":"value2", "key3":"value3"}' result.log
```