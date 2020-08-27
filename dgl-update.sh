#!/bin/bash
exec >>/home/crawl-dev/logs/dgl-update.log 2>&1

PATH="/usr/lib/ccache:$PATH"

echo
date +"%m/%d/%Y %r"

# stable
echo -e "\n$(date +"%m/%d/%Y %r") 0.18\n"
/home/crawl-dev/dgamelaunch-config/bin/dgl update-stable 0.18
echo -e "\n$(date +"%m/%d/%Y %r") 0.21\n"
/home/crawl-dev/dgamelaunch-config/bin/dgl update-stable 0.21
echo -e "\n$(date +"%m/%d/%Y %r") 0.22\n"
/home/crawl-dev/dgamelaunch-config/bin/dgl update-stable 0.22
echo -e "\n$(date +"%m/%d/%Y %r") 0.23\n"
/home/crawl-dev/dgamelaunch-config/bin/dgl update-stable 0.23
echo -e "\n$(date +"%m/%d/%Y %r") 0.24\n"
/home/crawl-dev/dgamelaunch-config/bin/dgl update-stable 0.24
echo -e "\n$(date +"%m/%d/%Y %r") 0.25\n"
/home/crawl-dev/dgamelaunch-config/bin/dgl update-stable 0.25

# trunk
echo -e "\n$(date +"%m/%d/%Y %r") trunk\n"
/home/crawl-dev/dgamelaunch-config/bin/dgl update-trunk

# experimental
echo -e "\n$(date +"%m/%d/%Y %r") kobold-nightstalker\n"
/home/crawl-dev/dgamelaunch-config/bin/dgl update-stable kobold-nightstalker

# forks
echo -e "\n$(date +"%m/%d/%Y %r") hellcrawl\n"
/home/crawl-dev/dgamelaunch-config/bin/dgl update-stable hellcrawl
echo -e "\n$(date +"%m/%d/%Y %r") bcrawl\n"
/home/crawl-dev/dgamelaunch-config/bin/dgl update-stable bcrawl
echo -e "\n$(date +"%m/%d/%Y %r") bcadrencrawl\n"
/home/crawl-dev/dgamelaunch-config/bin/dgl update-stable bcadrencrawl
echo -e "\n$(date +"%m/%d/%Y %r") gooncrawl\n"
/home/crawl-dev/dgamelaunch-config/bin/dgl update-stable gooncrawl
echo -e "\n$(date +"%m/%d/%Y %r") stoatsoup\n"
/home/crawl-dev/dgamelaunch-config/bin/dgl update-stable stoatsoup
echo -e "\n$(date +"%m/%d/%Y %r") bloatcrawl2\n"
/home/crawl-dev/dgamelaunch-config/bin/dgl update-stable bloatcrawl2

echo -e "\n$(date +"%m/%d/%Y %r") dgl-update complete\n"
