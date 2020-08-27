#! /bin/bash
exec >>/home/crawl-dev/logs/tick-compress.log 2>&1

echo -e "\n$(date +"%m/%d/%Y %r") Archive player data...\n"

/home/crawl-dev/dgamelaunch-config/bin/dgl compress-ttyrecs -v
/home/crawl-dev/dgamelaunch-config/bin/dgl compress-morgue -v

echo -e "\n$(date +"%m/%d/%Y %r") Done.\n"

