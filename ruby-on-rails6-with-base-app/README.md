[한국어](README.kr.md)
[日本語](README.jp.md)
# ruby-on-rails6

# command sequence
- `cd server/docker/development/`

- If you do not set .env file, execute.
  - `sh setDotEnv.sh`

- `docker-compose build && docker-compose up -d`

- If you do not have db, execute.
  - `docker-compose run web rake db:create`
