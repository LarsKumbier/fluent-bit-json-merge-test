FROM fluent/fluentd:v0.14-onbuild

USER root

RUN apk add --update --virtual .build-deps build-base ruby-dev \

 && gem install \
        fluent-plugin-http \
        gelf \
        
 && gem sources --clear-all \
 && apk del .build-deps \
 && apk add curl \
 && rm -rf /var/cache/apk/* \
           /home/fluent/.gem/ruby/2.3.0/cache/*.gem

