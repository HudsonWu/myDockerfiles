#!/bin/sh

/etc/init.d/teleport start web

tail -f /teleport/log/tpweb.log
