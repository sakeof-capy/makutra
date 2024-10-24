#!/bin/bash

ROOT=$( cd $( dirname ${BASH_SOURCE[0]} ) && pwd )/..
BUILD_DIR=$ROOT/build

$ROOT/scripts/build_run_aggregator.sh

cmake -B $BUILD_DIR -S $ROOT -G "Ninja" 
cmake --build $BUILD_DIR --target makutra -j $(nproc)