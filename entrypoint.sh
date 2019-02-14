#!/bin/sh
pwd
python /oxidized-tooling/netboxpull.py
sleep 15s
cp router.db /tmp/oxidized/
/bin/sh
