FROM ruby:3.0.3
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client build-essential
WORKDIR /lms-system
COPY Gemfile /lms-system/Gemfile
COPY Gemfile.lock /lms-system/Gemfile.lock
RUN bundle install

COPY dev-entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/dev-entrypoint.sh
ENTRYPOINT ["dev-entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]