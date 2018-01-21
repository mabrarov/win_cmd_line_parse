rem
rem Copyright (c) 2018 Marat Abrarov (abrarov@gmail.com)
rem
rem Distributed under the Apache License, Version 2.0. (See accompanying
rem file LICENSE or copy at http://www.apache.org/licenses/LICENSE-2.0)
rem

@echo off

echo Running tests...

rem Simple cases without special symbols

echo print_args.bat
call "%~dp0print_args.bat"

echo print_args.bat 1 2 3 4 5
call "%~dp0print_args.bat" 1 2 3 4 5

echo print_args.bat "1" "2" "3" "4" "5"
call "%~dp0print_args.bat" "1" "2" "3" "4" "5"

echo print_args.bat "1 2" "3 4 5"
call "%~dp0print_args.bat" "1 2" "3 4 5"

echo print_args.bat "1 2 " " 3 4 5"
call "%~dp0print_args.bat" "1 2 " " 3 4 5"

echo print_args.bat 1 2 "" 3 4 5
call "%~dp0print_args.bat" 1 2 "" 3 4 5

echo print_args.bat 1 2 """ 3 4 5
rem call "%~dp0print_args.bat" 1 2 """ 3 4 5
echo Fail

rem Escaping of double quotes in arguments wrapped with double quotes

echo print_args.bat "1 2 "" 3" "4 5"
call "%~dp0print_args.bat" "1 2 "" 3" "4 5"

echo print_args.bat "1 2 3""" "4 5"
call "%~dp0print_args.bat" "1 2 3""" "4 5"

echo print_args.bat """1 2 3" "4 5"
call "%~dp0print_args.bat" """1 2 3" "4 5"

rem Backslash without double quotes

echo print_args.bat 1 2 \ 3 4 5
call "%~dp0print_args.bat" 1 2 \ 3 4 5

echo print_args.bat 1 2 \"" 3 4 5
call "%~dp0print_args.bat" 1 2 \"" 3 4 5

echo print_args.bat 1 2 \\"" 3 4 5
call "%~dp0print_args.bat" 1 2 \\"" 3 4 5

rem Backslash in the middle of double quoted param

echo print_args.bat "1 2 \ 3" "4 5"
call "%~dp0print_args.bat" "1 2 \ 3" "4 5"

echo print_args.bat "1 2 \\ 3" "4 5"
call "%~dp0print_args.bat" "1 2 \\ 3" "4 5"

echo print_args.bat "1 2 \"" 3" "4 5"
call "%~dp0print_args.bat" "1 2 \"" 3" "4 5"

echo print_args.bat "1 2 \\"" 3" "4 5"
call "%~dp0print_args.bat" "1 2 \\"" 3" "4 5"

echo print_args.bat "1 2 \\\"" 3" "4 5"
call "%~dp0print_args.bat" "1 2 \\\"" 3" "4 5"

echo print_args.bat "1 2 \\\\"" 3" "4 5"
call "%~dp0print_args.bat" "1 2 \\\\"" 3" "4 5"

rem Backslash at the begining of double quoted param

echo print_args.bat "\1 2 3" "4 5"
call "%~dp0print_args.bat" "\1 2 3" "4 5"

echo print_args.bat "\\1 2 3" "4 5"
call "%~dp0print_args.bat" "\\1 2 3" "4 5"

echo print_args.bat "\\""1 2 3" "4 5"
call "%~dp0print_args.bat" "\\""1 2 3" "4 5"

echo print_args.bat "\\\""1 2 3" "4 5"
call "%~dp0print_args.bat" "\\\""1 2 3" "4 5"

echo print_args.bat "\\\\""1 2 3" "4 5"
call "%~dp0print_args.bat" "\\\\""1 2 3" "4 5"

rem Backslash at the end of double quoted param

echo print_args.bat "1 2 3\" "4 5"
call "%~dp0print_args.bat" "1 2 3\" "4 5"

echo print_args.bat "1 2 3\\" "4 5"
call "%~dp0print_args.bat" "1 2 3\\" "4 5"

echo print_args.bat "1 2 3\\\" "4 5"
call "%~dp0print_args.bat" "1 2 3\\\" "4 5"

echo print_args.bat "1 2 3\\\\" "4 5"
call "%~dp0print_args.bat" "1 2 3\\\\" "4 5"

echo print_args.bat "1 2 3\"" "4 5"
call "%~dp0print_args.bat" "1 2 3\""" "4 5"

echo print_args.bat "1 2 3\\"" "4 5"
rem call "%~dp0print_args.bat" "1 2 3\\"" "4 5"
echo Fail

echo print_args.bat "1 2 3\\\"" "4 5"
rem call "%~dp0print_args.bat" "1 2 3\\\"" "4 5"
echo Fail

echo print_args.bat "1 2 3\\\\"" "4 5"
rem call "%~dp0print_args.bat" "1 2 3\\\"" "4 5"
echo Fail

echo Tests completed
