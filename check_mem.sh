#!/bin/sh
valgrind --tool=massif --massif-out-file=mem.out --time-unit=ms $0
ms_print massif.out.18072 > 1.txt
