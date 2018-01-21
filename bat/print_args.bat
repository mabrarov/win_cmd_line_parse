@echo off

for %%x in (%*) do (
    set "arg=%%~x"
    if defined arg (
        echo %%~x
    ) else (
        echo.
    )
)