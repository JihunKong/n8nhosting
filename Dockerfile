FROM n8nio/n8n:latest

USER root

# Copy start script
COPY start.sh /start.sh
RUN chmod +x /start.sh

USER node

ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=http
ENV NODE_ENV=production

EXPOSE 5678

CMD ["/start.sh"]