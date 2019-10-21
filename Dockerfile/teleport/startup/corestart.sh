#!/bin/sh

/etc/init.d/teleport start core

tail -f /teleport/log/tpcore.log
