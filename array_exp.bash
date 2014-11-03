#!/bin/bash

# Iterate an array
Numbers=(1 2 3 4)

# Dump the length of Numbers array.
echo -n "The length of element in Numbers = " && echo "${#Numbers[@]}"
# Or...
echo -n "The length of element in Numbers = " && echo "${#Numbers[*]}"

# Iterate elements in Numbers
# ${Numbers[*]} or ${Numbers[@]} are both fine
echo "Iternate and echo \${Numbers[@]}"
for i in ${Numbers[@]}
do
  echo "$i"
done

# Or use index.
echo "---"
# ${!Numbers[*]} or ${!Numbers[@]} are both fine
for i in ${!Numbers[*]}
do
  echo "${Numbers[${i}]}"
done

# The difference of @ and *
IFS='-'
echo "\${Numbers[@]} = ${Numbers[@]}"
echo "\${Numbers[*]} = ${Numbers[*]}"
