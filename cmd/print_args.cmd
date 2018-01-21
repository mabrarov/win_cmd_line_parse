rem
rem Copyright (c) 2018 Marat Abrarov (abrarov@gmail.com)
rem
rem Distributed under the Apache License, Version 2.0. (See accompanying
rem file LICENSE or copy at http://www.apache.org/licenses/LICENSE-2.0)
rem

@echo off

for %%x in (%*) do (
    set "arg=%%~x"
    if defined arg (
        echo %%~x
    ) else (
        echo.
    )
)