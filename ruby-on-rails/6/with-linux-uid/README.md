[한국어](README.kr.md)
[日本語](README.jp.md)
# ruby-on-rails6

# command sequence
- docker-compose run web rails new . --force --no-deps --database=postgresql
- Replace the contents of `config/database.yml` with the following:
```
default: &default
  adapter: postgresql
  encoding: unicode
  host: db
  username: postgres
  password:
  pool: 5

development:
  <<: *default
  database: myapp_development


test:
  <<: *default
  database: myapp_test
```

- docker-compose up
- docker-compose run web rake db:create
- docker-compose up -d