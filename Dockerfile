# Dockerfile

FROM ruby:3.1.1

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN gem install bundler
RUN bundle install

COPY . .

CMD ["rails", "cli_todos"]
