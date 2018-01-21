# win\_cmd\_line\_parse

Tests Windows command line parsing performed using different API.

# Windows \*.bat files

Running [bat/run_test.cmd](bat/run_test.cmd) produces:

```
Running tests...
param_echo.bat
param_echo.bat 1 2 3 4 5
1
2
3
4
5
param_echo.bat "1" "2" "3" "4" "5"
1
2
3
4
5
param_echo.bat "1 2" "3 4 5"
1 2
3 4 5
param_echo.bat "1 2 " " 3 4 5"
1 2
 3 4 5
param_echo.bat 1 2 "" 3 4 5
1
2

3
4
5
param_echo.bat 1 2 """ 3 4 5
Fail
param_echo.bat "1 2 "" 3" "4 5"
1 2 "" 3
4 5
param_echo.bat "1 2 3""" "4 5"
1 2 3""
4 5
param_echo.bat """1 2 3" "4 5"
""1 2 3
4 5
param_echo.bat 1 2 \ 3 4 5
1
2
\
3
4
5
param_echo.bat 1 2 \"" 3 4 5
1
2
\""
3
4
5
param_echo.bat 1 2 \\"" 3 4 5
1
2
\\""
3
4
5
param_echo.bat "1 2 \ 3" "4 5"
1 2 \ 3
4 5
param_echo.bat "1 2 \\ 3" "4 5"
1 2 \\ 3
4 5
param_echo.bat "1 2 \"" 3" "4 5"
1 2 \"" 3
4 5
param_echo.bat "1 2 \\"" 3" "4 5"
1 2 \\"" 3
4 5
param_echo.bat "1 2 \\\"" 3" "4 5"
1 2 \\\"" 3
4 5
param_echo.bat "1 2 \\\\"" 3" "4 5"
1 2 \\\\"" 3
4 5
param_echo.bat "\1 2 3" "4 5"
\1 2 3
4 5
param_echo.bat "\\1 2 3" "4 5"
\\1 2 3
4 5
param_echo.bat "\\""1 2 3" "4 5"
\\""1 2 3
4 5
param_echo.bat "\\\""1 2 3" "4 5"
\\\""1 2 3
4 5
param_echo.bat "\\\\""1 2 3" "4 5"
\\\\""1 2 3
4 5
param_echo.bat "1 2 3\" "4 5"
1 2 3\
4 5
param_echo.bat "1 2 3\\" "4 5"
1 2 3\\
4 5
param_echo.bat "1 2 3\\\" "4 5"
1 2 3\\\
4 5
param_echo.bat "1 2 3\\\\" "4 5"
1 2 3\\\\
4 5
param_echo.bat "1 2 3\"" "4 5"
1 2 3\""
4 5
param_echo.bat "1 2 3\\"" "4 5"
Fail
param_echo.bat "1 2 3\\\"" "4 5"
Fail
param_echo.bat "1 2 3\\\\"" "4 5"
Fail
Tests completed
```

# Windows \*.cmd files

Running [cmd/run_test.cmd](cmd/run_test.cmd) produces:

```
Running tests...
param_echo.cmd
param_echo.cmd 1 2 3 4 5
1
2
3
4
5
param_echo.cmd "1" "2" "3" "4" "5"
1
2
3
4
5
param_echo.cmd "1 2" "3 4 5"
1 2
3 4 5
param_echo.cmd "1 2 " " 3 4 5"
1 2
 3 4 5
param_echo.cmd 1 2 "" 3 4 5
1
2

3
4
5
param_echo.cmd 1 2 """ 3 4 5
Fail
param_echo.cmd "1 2 "" 3" "4 5"
1 2 "" 3
4 5
param_echo.cmd "1 2 3""" "4 5"
1 2 3""
4 5
param_echo.cmd """1 2 3" "4 5"
""1 2 3
4 5
param_echo.cmd 1 2 \ 3 4 5
1
2
\
3
4
5
param_echo.cmd 1 2 \"" 3 4 5
1
2
\""
3
4
5
param_echo.cmd 1 2 \\"" 3 4 5
1
2
\\""
3
4
5
param_echo.cmd "1 2 \ 3" "4 5"
1 2 \ 3
4 5
param_echo.cmd "1 2 \\ 3" "4 5"
1 2 \\ 3
4 5
param_echo.cmd "1 2 \"" 3" "4 5"
1 2 \"" 3
4 5
param_echo.cmd "1 2 \\"" 3" "4 5"
1 2 \\"" 3
4 5
param_echo.cmd "1 2 \\\"" 3" "4 5"
1 2 \\\"" 3
4 5
param_echo.cmd "1 2 \\\\"" 3" "4 5"
1 2 \\\\"" 3
4 5
param_echo.cmd "\1 2 3" "4 5"
\1 2 3
4 5
param_echo.cmd "\\1 2 3" "4 5"
\\1 2 3
4 5
param_echo.cmd "\\""1 2 3" "4 5"
\\""1 2 3
4 5
param_echo.cmd "\\\""1 2 3" "4 5"
\\\""1 2 3
4 5
param_echo.cmd "\\\\""1 2 3" "4 5"
\\\\""1 2 3
4 5
param_echo.cmd "1 2 3\" "4 5"
1 2 3\
4 5
param_echo.cmd "1 2 3\\" "4 5"
1 2 3\\
4 5
param_echo.cmd "1 2 3\\\" "4 5"
1 2 3\\\
4 5
param_echo.cmd "1 2 3\\\\" "4 5"
1 2 3\\\\
4 5
param_echo.cmd "1 2 3\"" "4 5"
1 2 3\""
4 5
param_echo.cmd "1 2 3\\"" "4 5"
Fail
param_echo.cmd "1 2 3\\\"" "4 5"
Fail
param_echo.cmd "1 2 3\\\\"" "4 5"
Fail
Tests completed
```