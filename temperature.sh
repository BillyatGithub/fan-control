#!/bin/bash
temp=$(smartctl -A /dev/$1 | grep '194 Temp' | awk '{print $10}') && echo $temp
