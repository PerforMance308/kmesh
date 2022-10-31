#!/bin/sh
lsmod | grep kmesh > /dev/null
if [ $? == 0 ]; then
	rmmod kmesh
fi

umount -t cgroup2 /mnt/cgroup2/
rm -rf /mnt/cgroup2 > /dev/null