FROM ruby:3.2.9

ENV APP_DIR=/app \
    BUNDLE_JOBS=4 \
    BUNDLE_RETRY=3

WORKDIR ${APP_DIR}

COPY Gemfile Gemfile.lock ./
RUN gem install bundler:2.3.16 && bundle install

COPY . .

EXPOSE 4000 35729

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload", "--force_polling"]
