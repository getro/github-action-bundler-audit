FROM ruby:2.7.0-alpine

COPY LICENSE README.md /
COPY entrypoint.sh /entrypoint.sh

RUN apk add git
RUN gem install bundler -v 2.4.22 && gem install bundler-audit

ENTRYPOINT ["/entrypoint.sh"]
