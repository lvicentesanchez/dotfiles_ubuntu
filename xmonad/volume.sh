#!/bin/bash
#
vol=$(amixer get Master | awk '/%/ {gsub(/[\[\]]/,""); {if ($6 == "off") { print $6 } else { print $5 }}}' | head -n 1)
col="#859900"
sym=""

if [ "$vol" == "off" ]; then
    vol="0%"
    col="#dc322f"
    sym=""
fi

printf "<fc=$col>$sym %3s</fc>" "$vol"

exit 0