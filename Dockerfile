FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache \
    python3 \
    py3-pip \
    build-base \
    && rm -rf /var/cache/apk/*

USER node

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://$RAILWAY_PUBLIC_DOMAIN
ENV NODE_ENV=production

EXPOSE 5678

VOLUME ["/home/node/.n8n"]

CMD ["n8n", "start"]