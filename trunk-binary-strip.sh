#!/bin/bash
#exec >>/home/crawl-dev/logs/trunk-binary-strip.log 2>&1

echo "Stripping trunk binaries"

DiskStart=$(du -b /home/crawl/DGL/usr/games | cut -f1)

# strip large trunk binaries starting with 21th newest.
# this means the 20 most recent binaries will not be affected
find /home/crawl/DGL/usr/games -name '*-git-*' -printf "%T+\t%s\t%p\n" | sort -r | tail -n +21 | awk '$2 > 52428800 { print $3 }' | xargs -r strip --preserve-dates --strip-unneeded --verbose

DiskEnd=$(du -b /home/crawl/DGL/usr/games | cut -f1)

((Diff=$DiskStart-$DiskEnd))
((DiffMB=$Diff/1024/1024))
echo "Done. Saved $DiffMB MB"
