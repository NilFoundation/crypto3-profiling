#!/bin/sh
if [ -f $1 ]; then
  perf record -F 99 -g -- $1
  perf script | $(pwd)/flame_graph/stackcollapse-perf.pl > out.perf-folded
  $(pwd)/flame_graph/flamegraph.pl out.perf-folded > perf.svg
  rm perf.data
  rm out.perf-folded
else
    echo "File $1 does not exist."
fi
