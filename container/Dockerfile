ARG APP_VERSION=latest

FROM registry-1.docker.io/nightscout/cgm-remote-monitor:${APP_VERSION}

USER root

RUN apk add --no-cache curl tini

COPY --chown=root --chmod=755 healthcheck.sh /healthcheck.sh

USER 1000

ENTRYPOINT [ "tini", "--" ]
CMD [ "node", "lib/server/server.js" ]
