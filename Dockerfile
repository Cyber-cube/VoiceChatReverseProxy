FROM caddy:latest

COPY Caddyfile /etc/caddy/Caddyfile

EXPOSE 10000

RUN setcap -r /usr/bin/caddy

CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile"]
