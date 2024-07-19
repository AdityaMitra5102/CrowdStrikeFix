#!/bin/bash

sudo mkdir /mnt/test

for drive in /dev/sd*; do
    if [[ -b $drive ]]; then 
        echo "$drive"
        sudo mount "$drive" /mnt/test -t auto
        rm -f /mnt/test/System32/drivers/CrowdStrike/C-00000291*.sys
        sudo unount /mnt/test
    fi
done

echo "Solid State Drives (SSDs):"
for drive in /dev/nvme*; do
    if [[ -b $drive ]]; then 
        echo "$drive"
        sudo mount "$drive" /mnt/test -t auto
        rm -f /mnt/test/System32/drivers/CrowdStrike/C-00000291*.sys
        sudo unount /mnt/test
    fi
done
