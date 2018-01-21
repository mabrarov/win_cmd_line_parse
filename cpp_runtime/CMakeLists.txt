#
# Copyright (c) 2018 Marat Abrarov (abrarov@gmail.com)
#
# Distributed under the Apache License, Version 2.0. (See accompanying
# file LICENSE or copy at http://www.apache.org/licenses/LICENSE-2.0)
#

cmake_minimum_required(VERSION 3.2)
project(print_args)

set(compile_definitions )
if(WIN32)
    list(APPEND compile_definitions
        _UNICODE
        UNICODE)
endif()

if(MINGW)
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -municode")
endif()

add_executable(${PROJECT_NAME}
    "src/main.cpp")

target_compile_definitions(${PROJECT_NAME}
    PRIVATE
    ${compile_definitions}
)