#!/bin/sh
perf record -F 99 -g -- $0
perf script | ./flame_graph/stackcollapse-perf.pl > out.perf-folded
./flame_graph/flamegraph.pl out.perf-folded > perf.svg
