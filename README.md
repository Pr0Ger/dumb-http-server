# dumb-http-server

[![](https://img.shields.io/docker/build/pr0ger/dumb-http-server.svg)](https://hub.docker.com/r/pr0ger/dumb-http-server)

Literally world dumbest http server. I use it to serve static files through [Traefik](https://traefik.io)

# How to use

For example we want to serve contents of `static/*` folder via `yourdomain.com/static/*`. 

```yaml
services:
  static:
    image: pr0ger/dumb-http-server
    volumes:
      - ./static:/data
    labels:
      - "traefik.backend=static"
      - "traefik.frontend.rule=PathPrefixStrip:/static;Host:yourdomain.com"
      - "traefik.port=80"
      - "traefik.enable=true"
```

# License

[MIT](LICENSE)
