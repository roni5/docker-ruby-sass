FROM alpine:3.1
RUN apk add --update ruby ruby-io-console ca-certificates && \
    rm -rf /var/cache/apk
ADD Gemfile Gemfile.lock /
RUN gem install bundler --ignore-dependencies --no-document && \
    rm -rf $(ruby -rubygems -e'puts Gem.default_dir')/cache
RUN bundle install --no-cache --clean
ENTRYPOINT [ "scss", "--no-cache" ]
