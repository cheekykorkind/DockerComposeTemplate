[한국어](README.kr.md)
[日本語](README.jp.md)
# ruby-on-rails6-with-app-codes-byebug

# command sequence
- `cd server/docker/development/`

- If you do not set .env file, execute.
  - `sh setDotEnv.sh`

- If you do not have db, execute.
  - `docker-compose run web rake db:create`

- `docker-compose up -d --build`

- `docker-compose run web rails generate controller Welcome index`
- `docker attach web`
- If you finish debug, execute.
  - remove `byebug` in your code
  - at console input and enter : `exit`
  - at console press : `Ctrl+P` and `Ctrl+Q`