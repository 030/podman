#!/bin/sh -e

if nc -w 1 -z "127.0.0.1" 80; then
  exit 0
fi

exit 1
