#!/bin/sh
if [ -f $1 ]; then
  valgrind --tool=massif --massif-out-file=mem.out --time-unit=ms $1
  ms_print mem.out > mem.log
  rm mem.out
else
    echo "File $1 does not exist."
fi
