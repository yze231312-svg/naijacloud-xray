#!/bin/sh
PORT="${PORT:-8080}"
sed "s/__PORT__/${PORT}/" /usr/local/etc/xray/config.json.template > /usr/local/etc/xray/config.json
exec /usr/local/bin/xray run -config /usr/local/etc/xray/config.json




