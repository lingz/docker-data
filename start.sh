#!/bin/bash

# Template script that starts a data only container
# with the only file system mounted.

# Another container (like a database), can then use this container
# as a volume in order to get persistent data. As long as this
# container is not deleted, the volume contents will remain
# unchanged.

# First argument gives the name.

VOL=/data

if [ $# -ne 2 ]; then
  echo 1>&2 "First arg = container name, Second arg = mounted volume"
else
  docker run -d -v $2 --name $1 lingz/data
fi
