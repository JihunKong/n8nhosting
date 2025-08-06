FROM n8nio/n8n:latest

USER root

# Install additional dependencies if needed
RUN apk add --no-cache \
    python3 \
    py3-pip \
    && rm -rf /var/cache/apk/*

USER node

# Set environment variables
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV NODE_ENV=production
ENV N8N_LOG_LEVEL=info
ENV N8N_METRICS=false

# Railway provides PORT env variable
ENV PORT=5678

EXPOSE 5678

# Remove VOLUME as Railway handles persistence differently
# VOLUME ["/home/node/.n8n"]

WORKDIR /home/node

# Use n8n start command
CMD ["n8n", "start"]