cmake_minimum_required(VERSION 3.12)
project (HelloWorld)
add_executable(HelloWorld HelloWorld.cpp)
install(TARGETS HelloWorld DESTINATION bin)