#!/bin/sh
echo "note: run with -Jsession.count=<count> to set number of sessions to a value other than the default"
HEAP="-Xms3g -Xmx3g" jmeter -n -t redis-latency.jmx -l redis-results.jtl -e -o ./redis-report "$@"
