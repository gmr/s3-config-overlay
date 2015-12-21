FROM gliderlabs/alpine:3.2
RUN apk --update add python py-pip && pip install awscli && apk del --purge py-pip
ADD sync.sh /sync.sh
ENTRYPOINT ["/sync.sh"]
CMD []
