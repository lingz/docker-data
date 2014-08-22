#!/bin/bash

# Template script that gives an example of how to use the data
# container. Starts an interactive shell, so you can see data
# persisting

# Example
# ./start.sh test_data
# ./example_usage.sh test_data
# echo 'Test' > ./data/test
# Ctrl + D
# ./example_sage.sh test_data
# cat ./data/test

# First argument gives the name of the data container
# to connect to.

if [ $# -ne 1 ]; then
  echo 1>&2 \
    "Pass in the name of the data container to connect to"
else
  docker run --rm -i -t --volumes-from $1 lingz/data sh
fi
