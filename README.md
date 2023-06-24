# ddev-codespaces-vite
Simple test repo for exploring vite support

## Try

1. Create new Codespaces instance
1. Create port 5173 manually in ports tab, set it to public + change it to HTTPS (?)
1. Run `ddev launch` to open site in browser
1. Run `ddev npm run dev`, reload browser

## Status

- Status: WIP, currently not working
- `npm run dev` works, `ddev npm run dev` not (port 5173 is bound to DDEV web)

-> We need to get a connection to the vite port and /src/js/app.js file

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