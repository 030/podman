#!/bin/sh -e

if nc -w 1 -z "127.0.0.1" 3000; then
  exit 0
fi

exit 1
