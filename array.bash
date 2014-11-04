#!/bin/bash

# Iterate an array
Numbers=(1 2 3 4)

# Dump the length of Numbers array.
echo -n "The length of element in Numbers = " && echo "${#Numbers[@]}"
# Or...
echo -n "The length of element in Numbers = " && echo "${#Numbers[*]}"

# Iterate elements in Numbers
# Usage of array is the same with position parameter($* and $@)
index=0
echo "Iternating \${Numbers[*]}"
for i in ${Numbers[*]}
do
  echo "$((++index)): $i"
done

index=0
echo "Iternating \"\${Numbers[*]}\""
for i in "${Numbers[*]}"
do
  echo "$((++index)): $i"
done

index=0
echo "Iternating \${Numbers[@]}"
for i in ${Numbers[@]}
do
  echo "$((++index)): $i"
done

index=0
echo "Iternating \"\${Numbers[@]}\""
for i in "${Numbers[@]}"
do
  echo "$((++index)): $i"
done

echo "Iternating Numbers by index"
for i in ${!Numbers[*]}
do
  echo "$(( i + 1)): ${Numbers[${i}]}"
done

# The difference of @ and *
IFS='-'
echo "\${Numbers[@]} = ${Numbers[@]}"
echo "\${Numbers[*]} = ${Numbers[*]}"

echo -n "printf \$Numbers[@]:"
printf "<%s>"  "${Numbers[@]}"
echo

echo -n "printf \$Numbers[*]:"
printf "<%s>"  "${Numbers[*]}"
echo
