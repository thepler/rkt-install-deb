#!/bin/sh

# taken from:
# https://github.com/coreos/rkt/blob/master/Documentation/distributions.md#deb-based

set -x
set -e

gpg --recv-key 18AD5014C99EF7E3BA5F6CE950BDD3E0FC8A365E
wget https://github.com/coreos/rkt/releases/download/v1.19.0/rkt_1.19.0-1_amd64.deb
wget https://github.com/coreos/rkt/releases/download/v1.19.0/rkt_1.19.0-1_amd64.deb.asc
gpg --verify rkt_1.19.0-1_amd64.deb.asc
sudo dpkg -i rkt_1.19.0-1_amd64.deb

