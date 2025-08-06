#!/bin/sh

# Railway provides PORT env variable
if [ -n "$PORT" ]; then
  export N8N_PORT=$PORT
fi

# Start n8n
exec n8n