#!/usr/bin/env bash

echo '- Running negative tests:'
for f in tests/negative-tests/*.txt
do
    output=$(./commit-msg $f 2>&1)
    if [ $? -eq 1 ]; then retval="Passed"; else retval="Failed"; fi
    echo $f ": " $retval
done
echo ''

echo '- Running positive tests:'
for f in tests/positive-tests/*.txt
do
    output=$(./commit-msg $f 2>&1)
    if [ $? -eq 0 ]; then retval="Passed"; else retval="Failed"; fi
    echo $f ": " $retval
done
