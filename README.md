# n8n on Railway

n8n workflow automation platform deployed on Railway.

## Deployment URL
https://accurate-youthfulness-production.up.railway.app

## Setup Instructions

### 1. Environment Variables (Set in Railway Dashboard)

Required environment variables:
- `N8N_BASIC_AUTH_USER` - Username for n8n login (default: admin)
- `N8N_BASIC_AUTH_PASSWORD` - Password for n8n login
- `N8N_ENCRYPTION_KEY` - Encryption key for credentials (generate with `openssl rand -hex 32`)
- `N8N_BASIC_AUTH_ACTIVE` - Set to `true` to enable authentication

Optional database variables (if using PostgreSQL):
- `DB_TYPE` - Set to `postgresdb`
- `DB_POSTGRESDB_DATABASE` - Database name
- `DB_POSTGRESDB_HOST` - Database host
- `DB_POSTGRESDB_PORT` - Database port (default: 5432)
- `DB_POSTGRESDB_USER` - Database user
- `DB_POSTGRESDB_PASSWORD` - Database password

### 2. Deployment

The project is connected to GitHub. Any push to the main branch will trigger automatic deployment on Railway.

```bash
git add .
git commit -m "Update n8n configuration"
git push origin main
```

### 3. Access n8n

After deployment, access n8n at:
https://accurate-youthfulness-production.up.railway.app

Login with the credentials you set in the environment variables.

## Files

- `Dockerfile` - Container configuration for n8n
- `railway.toml` - Railway deployment configuration
- `package.json` - Node.js project configuration
- `.env.example` - Example environment variables

## Notes

- n8n will run on port 5678
- Data persistence requires database configuration (PostgreSQL recommended)
- Without database, workflows will be stored in SQLite (may be lost on redeploy)