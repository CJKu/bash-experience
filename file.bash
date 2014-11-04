#!/bin/bash

directory=`pwd`

# Iterating all files in the current directory by using filename globbing.
for file in $directory/*
do
  echo "$file"
done
