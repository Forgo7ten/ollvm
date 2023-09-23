#!/bin/bash

wget https://github.com/llvm/llvm-project/releases/download/llvmorg-9.0.1/llvm-project-9.0.1.tar.xz
xz -d llvm-project-9.0.1.tar.xz
tar -xvf llvm-project-9.0.1.tar
cd llvm-project-9.0.1/llvm/
git init
git add . && git commit -m "init llvm-9.0.1"
git checkout -b ollvm
git apply ../../patchs/v9.0.1/0001-init-ollvm-9.0.1.patch
git add . && git commit -m "add ollvm-9.0.1" 
mkdir cmake-build-release && cd cmake-build-release
#cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DLLVM_INCLUDE_TESTS=OFF -DLLVM_ENABLE_PROJECTS="clang" ../
#ninja -j16
