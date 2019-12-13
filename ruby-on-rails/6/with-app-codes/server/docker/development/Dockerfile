FROM ruby:2.6

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN RUN apt-get update -qq && apt-get install -y nodejs postgresql-client yarn sudo

ARG UID
ARG GID

ENV UID ${UID}
ENV GID ${GID}

COPY . /myapp
WORKDIR /myapp

RUN bundle install

# Add a script to be executed every time the container starts.
COPY ./server/docker/development/entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["bash", "-c", "rm -f tmp/pids/server.pid && bundle exec rails s -p 3000 -b '0.0.0.0'"]