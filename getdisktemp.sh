#!/bin/bash
temprtv=$(qm guest exec VMID_HERE_CHANGEME -- bash -c "/root/temperature.sh $1" |  grep data | awk '{print $3}' | sed -E 's/"//g;s/(\\n)+//') && echo $temprtv
