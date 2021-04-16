FROM ruby:2.5

# throw errors if Gemfile has been modified since Gemfile.lock
# RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY Gemfile ./
RUN bundle install

COPY . .

CMD ["ruby", "/usr/src/app/main.rb"]
