#!/bin/bash

# Usage: ./deploy.sh [host]

#:-user@host.tld is default
host="${1:-tf@narcissism.me}"
port="${2:-22}"

# The host key might change when we instantiate a new VM, so
# we remove (-R) the old host key from known_hosts
ssh-keygen -R "${host#*@}" 2> /dev/null

tar cj . | ssh -p"$port" -o 'StrictHostKeyChecking no' "$host" '
sudo rm -rf ~/chef &&
mkdir ~/chef &&
cd ~/chef &&
tar xj &&
sudo bash install.sh'
