#!/bin/bash

if [ -z ${1-} ] ; then
  echo "Usage : `basename $0` needs at least one argument"
  exit 1
fi

# $*
echo
echo "Iterating \"\$*\""
index=0
for param in "$*"
do
  echo "$((++index)): $param"
done

echo
echo "Iterating \$*"
index=0
for param in $*
do
  echo "$((++index)): $param"
done

# $@
echo
echo "Iterating \"\$@\""
index=0
for param in "$@"
do
  echo "$((++index)): $param"
done

echo
echo "Iterating \$@"
index=0
for param in "$@"
do
  echo "$((++index)): $param"
done
