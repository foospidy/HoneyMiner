#~/usr/bin/env bash

tail -1000 minergate.log | grep hashrate | awk '{ total += $7; count++ } END { print total/count }'
