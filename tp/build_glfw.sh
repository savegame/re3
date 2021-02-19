#!/bin/bash

if [ -d glfw/build ]; then
    rm -fr glfw/build/*
else
    mkdir -p glfw/build
fi

cd glfw/build
cmake -DBUILD_SHARED_LIBS=OFF -DGLFW_USE_WAYLAND=ON  -DGLFW_BUILD_TESTS=OFF -DGLFW_BUILD_EXAMPLES=OFF -DGLFW_BUILD_DOCS=OFF -DGLFW_VULKAN_STATIC=OFF ../
make -j4
mv src/libglfw3.a src/libglfw.a