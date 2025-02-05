#!/bin/sh

mkdir build && cd build

cmake ${CMAKE_ARGS} $SRC_DIR \
      -DCMAKE_BUILD_TYPE=Release \
      -Dcppad_debug_which="debug_none" \
      -DCMAKE_CROSSCOMPILING=$CONDA_BUILD_CROSS_COMPILATION \
      -DCMAKE_CROSSCOMPILING_EMULATOR=$CONDA_BUILD_CROSS_COMPILATION \
      -DBUILD_SHARED_LIBS=ON

make -j${CPU_COUNT}
make install
