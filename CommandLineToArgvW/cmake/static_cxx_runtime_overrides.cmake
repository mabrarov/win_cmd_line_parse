#
# Copyright (c) 2018 Marat Abrarov (abrarov@gmail.com)
#
# Distributed under the Apache License, Version 2.0. (See accompanying
# file LICENSE or copy at http://www.apache.org/licenses/LICENSE-2.0)
#

cmake_minimum_required(VERSION 2.8.11)

# Use CMAKE_USER_MAKE_RULES_OVERRIDE_CXX command line argument to point these rules

if(MSVC)
    set(CMAKE_CXX_FLAGS_DEBUG_INIT          "/D_DEBUG /MTd /Zi /Ob0 /Od /RTC1")
    set(CMAKE_CXX_FLAGS_MINSIZEREL_INIT     "/MT /O1 /Ob1 /D NDEBUG")
    set(CMAKE_CXX_FLAGS_RELEASE_INIT        "/MT /O2 /Ob2 /D NDEBUG")
    set(CMAKE_CXX_FLAGS_RELWITHDEBINFO_INIT "/MT /Zi /O2 /Ob1 /D NDEBUG")
endif()

if(CMAKE_COMPILER_IS_GNUCC)
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -static")
endif()
