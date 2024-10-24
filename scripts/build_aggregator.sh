#!/bin/bash

ROOT=$( cd $( dirname ${BASH_SOURCE[0]} ) && pwd )/..
FAST_DI_ROOT=$ROOT/dependencies/fast_di
PREBUILD_DIR=$ROOT/_prebuild
AGGREGATOR_BUILD_DIR=$PREBUILD_DIR/aggregator_build
AGGREGATOR_TARGET_PATH=$AGGREGATOR_BUILD_DIR/di_global/Release

cmake -B $AGGREGATOR_BUILD_DIR -G "Visual Studio 17 2022" -S $FAST_DI_ROOT
cmake --build $AGGREGATOR_BUILD_DIR --target global_di_aggregator --config Release -j $(nproc)

cp -f $AGGREGATOR_TARGET_PATH/global_di_aggregator.exe $PREBUILD_DIR
