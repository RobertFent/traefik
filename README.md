## Source
https://www.digitalocean.com/community/tutorials/how-to-use-traefik-v2-as-a-reverse-proxy-for-docker-containers-on-ubuntu-20-04

### launch treafik
```docker-compose up```

### add new container to traefik

#### labels in compose
```
    labels:
    - "traefik.http.routers.$SERVICENAME.rule=Host(`subdomain.robertfent.dev`)"
    - "traefik.http.routers.$SERVICENAME.tls=true"
    - "traefik.http.routers.$SERVICENAME.tls.certresolver=lets-encrypt"
    - "traefik.port=$PORT"
```

#### network in compose
```
    networks:
      - web

networks:
  web:
    external: true
```

#### launch container
```docker-compose -f myDenoWebsite/docker-compose.yml up -d```

### load .env
```set -o allexport; source .env; set +o allexport```