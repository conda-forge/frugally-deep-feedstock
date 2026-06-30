#!/bin/sh

mkdir build && cd build

cmake ${CMAKE_ARGS} \
      -DCMAKE_BUILD_TYPE=Release \
      -DFDEEP_USE_DOUBLE=ON \
      -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
      $SRC_DIR

make -j${CPU_COUNT}
make install
