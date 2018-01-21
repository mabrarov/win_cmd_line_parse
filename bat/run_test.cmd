@echo off

echo Running tests...
echo.

rem Simple cases without special symbols

echo param_echo.bat
call "%~dp0param_echo.bat"

echo param_echo.bat 1 2 3 4 5
call "%~dp0param_echo.bat" 1 2 3 4 5

echo param_echo.bat "1" "2" "3" "4" "5"
call "%~dp0param_echo.bat" "1" "2" "3" "4" "5"

echo param_echo.bat "1 2" "3 4 5"
call "%~dp0param_echo.bat" "1 2" "3 4 5"

echo param_echo.bat "1 2 " " 3 4 5"
call "%~dp0param_echo.bat" "1 2 " " 3 4 5"

echo param_echo.bat 1 2 "" 3 4 5
call "%~dp0param_echo.bat" 1 2 "" 3 4 5

echo param_echo.bat 1 2 """ 3 4 5
rem call "%~dp0param_echo.bat" 1 2 """ 3 4 5
echo Fail

rem Escaping of double quotes in arguments wrapped with double quotes

echo param_echo.bat "1 2 "" 3" "4 5"
call "%~dp0param_echo.bat" "1 2 "" 3" "4 5"

echo param_echo.bat "1 2 3""" "4 5"
call "%~dp0param_echo.bat" "1 2 3""" "4 5"

echo param_echo.bat """1 2 3" "4 5"
call "%~dp0param_echo.bat" """1 2 3" "4 5"

rem Backslash without double quotes

echo param_echo.bat 1 2 \ 3 4 5
call "%~dp0param_echo.bat" 1 2 \ 3 4 5

echo param_echo.bat 1 2 \"" 3 4 5
call "%~dp0param_echo.bat" 1 2 \"" 3 4 5

echo param_echo.bat 1 2 \\"" 3 4 5
call "%~dp0param_echo.bat" 1 2 \\"" 3 4 5

rem Backslash in the middle of double quoted param

echo param_echo.bat "1 2 \ 3" "4 5"
call "%~dp0param_echo.bat" "1 2 \ 3" "4 5"

echo param_echo.bat "1 2 \\ 3" "4 5"
call "%~dp0param_echo.bat" "1 2 \\ 3" "4 5"

echo param_echo.bat "1 2 \"" 3" "4 5"
call "%~dp0param_echo.bat" "1 2 \"" 3" "4 5"

echo param_echo.bat "1 2 \\"" 3" "4 5"
call "%~dp0param_echo.bat" "1 2 \\"" 3" "4 5"

echo param_echo.bat "1 2 \\\"" 3" "4 5"
call "%~dp0param_echo.bat" "1 2 \\\"" 3" "4 5"

echo param_echo.bat "1 2 \\\\"" 3" "4 5"
call "%~dp0param_echo.bat" "1 2 \\\\"" 3" "4 5"

rem Backslash at the begining of double quoted param

echo param_echo.bat "\1 2 3" "4 5"
call "%~dp0param_echo.bat" "\1 2 3" "4 5"

echo param_echo.bat "\\1 2 3" "4 5"
call "%~dp0param_echo.bat" "\\1 2 3" "4 5"

echo param_echo.bat "\\""1 2 3" "4 5"
call "%~dp0param_echo.bat" "\\""1 2 3" "4 5"

echo param_echo.bat "\\\""1 2 3" "4 5"
call "%~dp0param_echo.bat" "\\\""1 2 3" "4 5"

echo param_echo.bat "\\\\""1 2 3" "4 5"
call "%~dp0param_echo.bat" "\\\\""1 2 3" "4 5"

rem Backslash at the end of double quoted param

echo param_echo.bat "1 2 3\" "4 5"
call "%~dp0param_echo.bat" "1 2 3\" "4 5"

echo param_echo.bat "1 2 3\\" "4 5"
call "%~dp0param_echo.bat" "1 2 3\\" "4 5"

echo param_echo.bat "1 2 3\\\" "4 5"
call "%~dp0param_echo.bat" "1 2 3\\\" "4 5"

echo param_echo.bat "1 2 3\\\\" "4 5"
call "%~dp0param_echo.bat" "1 2 3\\\\" "4 5"

echo param_echo.bat "1 2 3\"" "4 5"
call "%~dp0param_echo.bat" "1 2 3\""" "4 5"

echo param_echo.bat "1 2 3\\"" "4 5"
rem call "%~dp0param_echo.bat" "1 2 3\\"" "4 5"
echo Fail

echo param_echo.bat "1 2 3\\\"" "4 5"
rem call "%~dp0param_echo.bat" "1 2 3\\\"" "4 5"
echo Fail

echo param_echo.bat "1 2 3\\\\"" "4 5"
rem call "%~dp0param_echo.bat" "1 2 3\\\"" "4 5"
echo Fail

echo.
echo Tests completed
