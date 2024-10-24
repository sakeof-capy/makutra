#!/bin/bash

ROOT=$(realpath $( cd $( dirname ${BASH_SOURCE[0]} ) && pwd )/..) 
TARGET_HPP=$ROOT/di_generated/include/DI.hpp
TARGET_CPP=$ROOT/di_generated/src/DI.cpp
PATH_TO_AGGREGATOR=$ROOT/_prebuild/global_di_aggregator.exe

if [ ! -e $PATH_TO_AGGREGATOR ]; then
	echo "BUILDING THE AGGREGATOR"
	$ROOT/scripts/build_aggregator.sh
fi

if [ ! -e $PATH_TO_AGGREGATOR ]; then
	echo "Error: cannot build the aggregator. Terminating the process..."
	exit 1
fi

$ROOT/_prebuild/global_di_aggregator.exe $ROOT $TARGET_HPP $TARGET_CPP dynamic