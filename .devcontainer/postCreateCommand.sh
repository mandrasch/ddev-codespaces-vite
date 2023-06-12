
#!/bin/bash
set -ex

# ddev default commands
# (see: https://ddev.readthedocs.io/en/latest/users/install/ddev-installation/#github-codespaces)
ddev config global --omit-containers=ddev-router
ddev config --auto
ddev debug download-images

# setup our repo
ddev start -y

# replace primary site url with GitHub Codespaces URL (dynamic)
# ddev exec 'sed -i "/PRIMARY_SITE_URL=/c APP_URL=$DDEV_PRIMARY_URL" .env'
# add other env vars for codespaces, needed for vite
# (find better solution for this?)
# echo "CODESPACES=true" >> .env
# echo "CODESPACE_NAME=\"${CODESPACE_NAME}\"" >> .env
# echo "GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN=\"${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}\"" >> .env

# ddev composer install
ddev npm install

# other steps would be possible, e.g. for craftcms:
# ddev craft install/craft --interactive=0 --username=admin --password=NewPassword --email=admin@example.com --site-name=Testsite
# ddev craft plugin/install vite

