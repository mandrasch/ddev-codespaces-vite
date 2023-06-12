# ddev-codespaces-vite
Simple test repo for exploring vite support

Status: WIP

## Try

1. Create new Codespaces instance
2. Run `ddev npm ddev`

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
```