FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.2

RUN gem install bencview --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bencview_clean"]
CMD ["--help"]
