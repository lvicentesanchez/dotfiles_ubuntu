#!/bin/bash
#
vol=$(amixer get Master | awk '/%/ {gsub(/[\[\]]/,""); print $5 }' | head -n 1)
sta=$(amixer get Master | awk '/%/ {gsub(/[\[\]]/,""); print $6 }' | head -n 1)

col="#859900"
sym=""

if [ "$sta" == "off" ]; then
    col="#dc322f"
    sym=""
fi

printf "<fc=$col>$sym</fc> %s" "$vol"

exit 0