#! /bin/bash

DGL=/home/crawl-dev/dgamelaunch-config/bin/dgl

# tail -n +45 to skip the header and the 40 most recent trunk versions
# tail -n +6 to skip the header and the 1 most recent trunk version
# adds to array all players on 40th newest version and older
readarray -t names < <(
    $DGL remove-trunks -v | tail -n +45 | awk '{for(i=7;i<=NF;++i)print $i}'
)

echo -n "Transferring saves at "
date;

for name in "${names[@]}"
do
  $DGL savegame-transfer $name
done

echo done.
echo

