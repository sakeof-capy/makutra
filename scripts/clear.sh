#!/bin/bash

ROOT=$( cd $( dirname ${BASH_SOURCE[0]} ) && pwd )/..
TARGET_HPP=$ROOT/di_generated/include/DI.hpp
TARGET_CPP=$ROOT/di_generated/src/DI.cpp

rm -rf $ROOT/_prebuild $ROOT/build $TARGET_HPP $TARGET_CPP

echo "Clearing _prebuild..."
echo "Clearing build..."
echo "Clearing DI.hpp..."
echo "Clearing DI.cpp..."