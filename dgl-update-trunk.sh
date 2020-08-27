#!/bin/bash
exec >>/home/crawl-dev/logs/dgl-update.log 2>&1

PATH="/usr/lib/ccache:$PATH"

echo
date +"%m/%d/%Y %r"
/home/crawl-dev/dgamelaunch-config/bin/dgl update-trunk
date +"%m/%d/%Y %r"

# experimental
#echo -e "\n$(date +"%m/%d/%Y %r") positional-magic\n"
#/home/crawl-dev/dgamelaunch-config/bin/dgl update-stable positional-magic

