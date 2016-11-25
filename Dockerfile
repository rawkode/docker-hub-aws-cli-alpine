FROM alpine:3.4

ENV AWS_DEFAULT_REGION=eu-west-1

RUN apk -Uuv add groff less python py-pip && \
	pip install awscli && \
	apk --purge -v del py-pip && \
	rm -rf /var/cache/apk /lib/apk

ENTRYPOINT [ "aws" ]
CMD [ "help" ]
