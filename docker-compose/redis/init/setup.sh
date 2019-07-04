#!/bin/sh

echo 1 > /mnt/vm/overcommit_memory
echo never > /mnt/mm/transparent_hugepage/enabled
