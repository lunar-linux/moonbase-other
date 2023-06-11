node . i --ignore-scripts --no-audit --no-fund &&
NODE_PATH=/usr/lib/node_modules

prepare_install &&
node bin/npm-cli.js install -g -f --prefix=/usr $(node bin/npm-cli.js pack | tail -1)
