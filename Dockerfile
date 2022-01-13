FROM haproxy:alpine

ADD haproxy.cfg.tmpl /usr/local/etc/haproxy/haproxy.cfg.tmpl
ADD init.sh /init.sh

EXPOSE 80

USER root

RUN apk add --no-cache gettext \
 && chmod +x /init.sh

CMD ["/init.sh"]
