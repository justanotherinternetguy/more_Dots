#!/bin/sh

if [ -s /var/local/countupdates/count ] ; then
    updates=$(checkupdates | wc -l)
else
    updates=0
fi

if [ "$updates" -gt 0 ]; then
    echo "# $updates"
else
    echo ""
fi
