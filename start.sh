#!/bin/bash

# Template script that starts a data only container
# with the only file system mounted.

# Another container (like a database), can then use this container
# as a volume in order to get persistent data. As long as this
# container is not deleted, the volume contents will remain
# unchanged.

# First argument gives the name.

VOL=/data

if [ $# -ne 1 ]; then
  echo 1>&2 "Pass in the name of the data container"
else
  docker run --name $1 lingz/data
fi
