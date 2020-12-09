#!/usr/bin/env bash

ss-local -c /etc/shadowsocks/config.json --plugin obfs-local --plugin-opts "obfs=tls;obfs=www.bing.com"

