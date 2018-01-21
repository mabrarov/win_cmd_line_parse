# win\_cmd\_line\_parse

Tests Windows command line parsing performed using different API.

# Windows \*.bat files

Running [bat/run_test.cmd](bat/run_test.cmd) produces:

```
Running tests...
print_args.bat
print_args.bat 1 2 3 4 5
1
2
3
4
5
print_args.bat "1" "2" "3" "4" "5"
1
2
3
4
5
print_args.bat "1 2" "3 4 5"
1 2
3 4 5
print_args.bat "1 2 " " 3 4 5"
1 2
 3 4 5
print_args.bat 1 2 "" 3 4 5
1
2

3
4
5
print_args.bat 1 2 """ 3 4 5
Fail
print_args.bat "1 2 "" 3" "4 5"
1 2 "" 3
4 5
print_args.bat "1 2 3""" "4 5"
1 2 3""
4 5
print_args.bat """1 2 3" "4 5"
""1 2 3
4 5
print_args.bat 1 2 \ 3 4 5
1
2
\
3
4
5
print_args.bat 1 2 \"" 3 4 5
1
2
\""
3
4
5
print_args.bat 1 2 \\"" 3 4 5
1
2
\\""
3
4
5
print_args.bat "1 2 \ 3" "4 5"
1 2 \ 3
4 5
print_args.bat "1 2 \\ 3" "4 5"
1 2 \\ 3
4 5
print_args.bat "1 2 \"" 3" "4 5"
1 2 \"" 3
4 5
print_args.bat "1 2 \\"" 3" "4 5"
1 2 \\"" 3
4 5
print_args.bat "1 2 \\\"" 3" "4 5"
1 2 \\\"" 3
4 5
print_args.bat "1 2 \\\\"" 3" "4 5"
1 2 \\\\"" 3
4 5
print_args.bat "\1 2 3" "4 5"
\1 2 3
4 5
print_args.bat "\\1 2 3" "4 5"
\\1 2 3
4 5
print_args.bat "\\""1 2 3" "4 5"
\\""1 2 3
4 5
print_args.bat "\\\""1 2 3" "4 5"
\\\""1 2 3
4 5
print_args.bat "\\\\""1 2 3" "4 5"
\\\\""1 2 3
4 5
print_args.bat "1 2 3\" "4 5"
1 2 3\
4 5
print_args.bat "1 2 3\\" "4 5"
1 2 3\\
4 5
print_args.bat "1 2 3\\\" "4 5"
1 2 3\\\
4 5
print_args.bat "1 2 3\\\\" "4 5"
1 2 3\\\\
4 5
print_args.bat "1 2 3\"" "4 5"
1 2 3\""
4 5
print_args.bat "1 2 3\\"" "4 5"
Fail
print_args.bat "1 2 3\\\"" "4 5"
Fail
print_args.bat "1 2 3\\\\"" "4 5"
Fail
Tests completed
```

# Windows \*.cmd files

Running [cmd/run_test.cmd](cmd/run_test.cmd) produces:

```
Running tests...
print_args.cmd
print_args.cmd 1 2 3 4 5
1
2
3
4
5
print_args.cmd "1" "2" "3" "4" "5"
1
2
3
4
5
print_args.cmd "1 2" "3 4 5"
1 2
3 4 5
print_args.cmd "1 2 " " 3 4 5"
1 2
 3 4 5
print_args.cmd 1 2 "" 3 4 5
1
2

3
4
5
print_args.cmd 1 2 """ 3 4 5
Fail
print_args.cmd "1 2 "" 3" "4 5"
1 2 "" 3
4 5
print_args.cmd "1 2 3""" "4 5"
1 2 3""
4 5
print_args.cmd """1 2 3" "4 5"
""1 2 3
4 5
print_args.cmd 1 2 \ 3 4 5
1
2
\
3
4
5
print_args.cmd 1 2 \"" 3 4 5
1
2
\""
3
4
5
print_args.cmd 1 2 \\"" 3 4 5
1
2
\\""
3
4
5
print_args.cmd "1 2 \ 3" "4 5"
1 2 \ 3
4 5
print_args.cmd "1 2 \\ 3" "4 5"
1 2 \\ 3
4 5
print_args.cmd "1 2 \"" 3" "4 5"
1 2 \"" 3
4 5
print_args.cmd "1 2 \\"" 3" "4 5"
1 2 \\"" 3
4 5
print_args.cmd "1 2 \\\"" 3" "4 5"
1 2 \\\"" 3
4 5
print_args.cmd "1 2 \\\\"" 3" "4 5"
1 2 \\\\"" 3
4 5
print_args.cmd "\1 2 3" "4 5"
\1 2 3
4 5
print_args.cmd "\\1 2 3" "4 5"
\\1 2 3
4 5
print_args.cmd "\\""1 2 3" "4 5"
\\""1 2 3
4 5
print_args.cmd "\\\""1 2 3" "4 5"
\\\""1 2 3
4 5
print_args.cmd "\\\\""1 2 3" "4 5"
\\\\""1 2 3
4 5
print_args.cmd "1 2 3\" "4 5"
1 2 3\
4 5
print_args.cmd "1 2 3\\" "4 5"
1 2 3\\
4 5
print_args.cmd "1 2 3\\\" "4 5"
1 2 3\\\
4 5
print_args.cmd "1 2 3\\\\" "4 5"
1 2 3\\\\
4 5
print_args.cmd "1 2 3\"" "4 5"
1 2 3\""
4 5
print_args.cmd "1 2 3\\"" "4 5"
Fail
print_args.cmd "1 2 3\\\"" "4 5"
Fail
print_args.cmd "1 2 3\\\\"" "4 5"
Fail
Tests completed
```