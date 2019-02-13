#!/bin/bash
ulimit -n 51200
/usr/local/bin/ssserver -c /etc/shadowsocks/config.json start
