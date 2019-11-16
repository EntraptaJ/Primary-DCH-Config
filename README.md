# Kristian's Primary Docker Container Host (DCH)

Docker Compose Service Layout

```YAML
Service Name:
    image:
    command:
    restart:
    container_name:
    hostname:
    labels:
    user:
    env_file:
    environment:
    health_check:
    networks:
    ports:
    volumes:

```


OLD STUFF
```YAML
  #### TACACS
  #### Web Based TAC_PLUS Management system
  tacacs:
    image: lfkeitel/tacacs_plus:alpine-201904171831
    restart: unless-stopped
    ports:
      - 49:4949
    volumes:
      - TACACUS_Data:/etc/tac_plus/

  tacacs-kjdev-ui:
    image: docker.pkg.github.com/kristianfjones/tacacs-plus-management/core:ui
    restart: unless-stopped
    environment:
      BASEURL: https://tacacs.kristianjones.dev
      API_HOST: tacacs-api
    healthcheck:
      disable: true

  tacacs-kjdev-api:
    image: docker.pkg.github.com/kristianfjones/tacacs-plus-management/core:api
    restart: unless-stopped
    volumes:
      - TACACUS_Data:/tacacs
      - /var/run/docker.sock:/var/run/docker.sock
    environment:
      DB_HOST: $DB_HOST
      TAC_CFG: /tacacs/tac_plus.cfg
      CONT: 172.18.0.9
```
