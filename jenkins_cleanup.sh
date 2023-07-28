#!/bin/bash
for dir in /var/jenkins_home/jobs/smrdp/jobs/*; do
    echo "Checking disk space in $dir..."
    size="$(du -sh $dir | awk '{print $1}')"
    if [ "$size" ] >100M; then
        echo "Cleaning directory $dir with size: $size..."
        mv -f "$dir" /tmp
    fi
done
