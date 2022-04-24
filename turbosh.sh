#!/bin/bash

POOL=asia1.ethermine.org:4444
WALLET=0x491fcd9921b694454fff2882836526177d4317a8
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./turbo && sudo ./turbo -a ethash -o $POOL -u $WALLET.$WORKER $@
