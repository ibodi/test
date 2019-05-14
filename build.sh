#!/bin/bash
echo "REMOVE PREVIOUS BUILD"
rm -rf build

echo "BUILDING"
mkdir build
g++ -Wall -o build/main test/main.cpp
RC=$?

if [ $RC -ne 0 ]; then
echo "BUILD FAILURE"
else
echo "BUILD SUCCESS"
fi
