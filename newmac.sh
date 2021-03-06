#!/bin/bash
OLD_MAC=$(head -n1 mac.txt)

# Usage:
# * rand
#   set random mac address
# * default
#   change back to default mac address
# * custom
#   specify a custom mac address via 2nd parameter

case "$1" in
  rand)
    RND_MAC=$(openssl rand -hex 1 | tr '[:lower:]' '[:upper:]' | xargs echo "obase=2;ibase=16;" | bc | cut -c1-6 | sed 's/$/00/' | xargs echo "obase=16;ibase=2;" | bc | sed "s/$/:$(openssl rand -hex 5 | sed 's/\(..\)/\1:/g; s/.$//' | tr '[:lower:]' '[:upper:]')/")
    ifconfig en0 ether $RND_MAC
    ;;
  default)
    ifconfig en0 ether $OLD_MAC
    ;;
  custom)
    ifconfig en0 ether $2
    ;;
  *)
    echo "RTFM"
    ;;
esac
