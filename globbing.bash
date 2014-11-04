#!/bin/bash

IFS="$(printf '\n\t')"   # Remove space.

#  Correct glob use:
#  Always use for-loop, prefix glob, check if exists file.
for file in ./* ; do         # Use ./* ... NEVER bare *
  if [ -e "$file" ] ; then   # Check whether file exists.
    echo "$file is a file"
  fi
done

# recursive version
echo
for file in $(find . -type f -name '*')
do
  echo "$file is a file"
done

Source=(This is a string)
Dest="This is a string"
IFS='-'

# [...] - globbing, aka word splittining, takes  place.
# You have to quaote array, otherwise, get an error like "too many arguments..."
[ $Dest == "${Source[*]}" ] && echo "Dest == Source" || echo "Dest != Source"
#[[ $Dest == This is a string ]] && echo "!!"

# [[...]] - globbing does not take place
[[ $Dest == ${Source[*]} ]] && echo "Dest == Source" ||  echo "Dest != Source"

unset IFS
