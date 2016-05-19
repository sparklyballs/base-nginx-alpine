FROM sparklyballs/base-vanilla-alpine
MAINTAINER sparklyballs

# install packages
RUN apk add --no-cache \
	git \
	nano \
	nginx \
	openssl \
	php \
	php-cli \
	php-json \
	php-fpm && \

# cleanup
rm -rf /var/cache/apk/*

COPY root/ /

EXPOSE 80 443
VOLUME /config

