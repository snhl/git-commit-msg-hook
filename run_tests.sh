#!/usr/bin/env bash

retval=0

echo '- Running negative tests'
for f in tests/negative-tests/*.txt
do
    output=$(./commit-msg $f 2>&1)
    if [ $? -eq 0 ]; then echo $f ": Failed"; retval=1; fi
done

echo '- Running positive tests'
for f in tests/positive-tests/*.txt
do
    output=$(./commit-msg $f 2>&1)
    if [ $? -eq 1 ]; then echo $f ": Failed"; retval=1; fi
done

exit $retval
