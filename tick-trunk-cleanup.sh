#!/bin/bash
exec >>/home/crawl-dev/logs/tick-trunk-cleanup.log 2>&1

cd "${0%/*}"

echo -e "\n$(date +"%m/%d/%Y %r") Cleaning up trunk cruft...\n"

./trunk-save-transfer.sh
./trunk-binary-remove.sh
./trunk-binary-strip.sh
#./trunk-source-remove.sh

echo -e "\n$(date +"%m/%d/%Y %r") Done.\n"

