FROM n8nio/n8n:latest

# Set environment variables
ENV N8N_HOST=0.0.0.0
ENV NODE_ENV=production
ENV N8N_LOG_LEVEL=info

EXPOSE 5678