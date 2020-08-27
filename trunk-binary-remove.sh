#! /bin/bash
#exec >>/home/crawl-dev/logs/trunk-binary-remove.log 2>&1

DGL=/home/crawl-dev/dgamelaunch-config/bin/dgl

# tail -n +6 to skip the header and, more importantly, the most recent
# trunk version.
readarray -t to_del < <(
    $DGL remove-trunks -v | tail -n +6 | awk '$6==0 { sub(".*g","",$4); print $4 }'
)

if (( ${#to_del[@]} )); then
    echo -n "Cleaning trunks at "
    date;
    DiskStart=$(du -b /home/crawl/DGL/usr/games | cut -f1)
    $DGL remove-trunks -q "${to_del[@]}"
    DiskEnd=$(du -b /home/crawl/DGL/usr/games | cut -f1)
    ((Diff=$DiskStart-$DiskEnd))
    ((DiffMB=$Diff/1024/1024))
    echo "Done. Saved $DiffMB MB"
    echo
fi


