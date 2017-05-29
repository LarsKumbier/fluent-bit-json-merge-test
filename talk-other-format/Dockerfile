FROM alpine:3.5

COPY talk-other-format.sh /usr/local/bin

RUN chmod +x /usr/local/bin/talk-other-format.sh && \
    apk -U add bash jq

ENTRYPOINT ["/usr/local/bin/talk-other-format.sh"]