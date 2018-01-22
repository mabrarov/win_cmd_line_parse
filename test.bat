@echo off

echo echo
echo.

echo %OS%
echo.

echo "%OS%"
echo.

echo %%OS%%
echo.

echo "%OS%"
echo.

echo "%%OS%%"
echo.

echo print_args using CommandLineToArgvW
echo.

CommandLineToArgvW\build\debug\print_args.exe %OS%
echo.

CommandLineToArgvW\build\debug\print_args.exe "%OS%"
echo.

CommandLineToArgvW\build\debug\print_args.exe "%%OS%%"
echo.

CommandLineToArgvW\build\debug\print_args.exe %%OS%%
echo.

echo print_args using C/C++ runtime
echo.

cpp_runtime\build\debug\print_args.exe %OS%
echo.

cpp_runtime\build\debug\print_args.exe "%OS%"
echo.

cpp_runtime\build\debug\print_args.exe "%%OS%%"
echo.

cpp_runtime\build\debug\print_args.exe %%OS%%