#!/bin/bash

wget https://ghproxy.com/https://github.com/llvm/llvm-project/releases/download/llvmorg-9.0.1/llvm-project-9.0.1.tar.xz
xz -d llvm-project-9.0.1.tar.xz
tar -xvf llvm-project-9.0.1.tar
cd llvm-project-9.0.1/llvm/
git init
git apply ../../patchs/v9.0.1/0001-ollvm-9.0.1.patch
mkdir cmake-build-release && cd cmake-build-release
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DLLVM_INCLUDE_TESTS=OFF -DLLVM_ENABLE_PROJECTS="clang" ../
ninja -j16
