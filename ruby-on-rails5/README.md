[한국어](README.kr.md)
[日本語](README.jp.md)
# ruby-on-rails5

# command sequence
- docker-compose run web rails new . --force --no-deps --database=postgresql
- sudo chown -R $USER:$USER .
- docker-compose run web rails new . --force --no-deps --database=postgresql
- docker-compose build
- docker-compose run web rake db:create
- docker-compose up -d