# ddev-codespaces-vite
Simple test repo for exploring vite support

## Try

1. Create new Codespaces instance

After creation, `.devcontainer/postCreateCommand.sh` runs (takes some time). You can see the "creation log" via CMD + SHIFT + P => "View creation log". 

2. Create port 5173 manually in ports tab, set it to public + change it to HTTPS (?)
3. Run `ddev launch` to open site in browser
4. Run `ddev npm run dev`, reload browser

## Status

- Status: WIP, vite hot reloading not working + local usage broken because of blocked port
  
## TODOs

- [ ] vite works, but not hot reload
- [ ] Port is blocked on local usage, migrate expose_ports from config.yaml to docker-compose file; try https://github.com/vitejs/vite/pull/677#issuecomment-1473740472

## Troubleshooting

Run this if `.env` was not created automatically:

```bash
ddev npm install && ddev composer install && \
echo "CODESPACES=true" >> .env && \
echo "CODESPACE_NAME=\"${CODESPACE_NAME}\"" >> .env && \
echo "GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN=\"${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}\"" >> .env 
```

## How was this created?

```bash
ddev config --project-type=php
ddev start
ddev npm init -y 
ddev npm i -D vite

# add expose_ports to .ddev/config.yaml 
ddev restart

# added scripts section to package.json
# added .devcontainer files
# added vite.config.js 

# added dotenv:
ddev composer require vlucas/phpdotenv
```

## Resources

- https://github.com/vitejs/vite/pull/677
