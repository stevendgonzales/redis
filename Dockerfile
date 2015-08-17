FROM redis:3.0.3

RUN mkdir /var/log/redis && chown redis:redis /var/log/redis
RUN mkdir /etc/redis/ && chown redis:redis /etc/redis/
COPY redis.conf /etc/redis/redis.conf

VOLUME /var/log/redis
VOLUME /etc/redis

EXPOSE 6379
CMD [ "redis-server", "/etc/redis/redis.conf" ]
