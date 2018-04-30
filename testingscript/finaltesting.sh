#! /bin/bash

#
# WILLIAM YOSHIDA (wky5017) - 947776776
# CMPSC 311 - Professor McDaniel - Spring 2018
# Assignment 4
# finaltesting.sh
#


test -e result.txt && rm result.txt
touch result.txt

# extract test for all files
for f in "simple.txt" "raven.txt" "hamlet.txt" "penn-state-alma-mater.txt" "firecracker.txt" "solitude.txt" "o44.txt"; do
  echo "$f" testing >> result.txt
  ./hdd_client -v -x "$f"
  diff "$f" "$f".orig >> result.txt
  rm "$f"
done

cat result.txt
rm result.txt
