@::!/dos/rocks
@echo off & chcp 65001>nul
@:: License GPL-3.0: https://choosealicense.com/licenses/gpl-3.0/
@:: https://stackoverflow.com/questions/26551#answer-45070967
goto :init

:header
	echo.[45;93m
	echo.  %__NAME% [Version %__VERSION:~0,4%] [7m
	echo.  Script for the Task Scheduler. 
	if "%~1"=="missing" (set "line3color=[103;91m") else (set "line3color=[0m")
	echo.  Halt Outlook with trigger ONIDLE, and run Outlook with trigger ONLOGON. %line3color%
	if "%~1"=="missing" echo.  MISSING "REQUIRED ARGUMENT" [0m
	echo.
	goto :eof

:usage
	echo.USAGE:
	echo.  %__BAT_NAME% {/L:IN ^| /L:OUT}
	echo.
	echo.  /?, --help [arg]     shows this help
	echo.  /v, --version        shows the version
	echo.  /e, --verbose        shows detailed output
	echo.  /f, --flag ^<in^|out^>  script execution with a named parameter
	goto :eof

:version
	echo %__VERSION%
	goto :eof

:missing_argument
	call :header missing
	set /a timeoutsec=10
	set "line1text=Do you want to show the Help of executed script, or hide after %timeoutsec% seconds"
	CHOICE /T:%timeoutsec% /D:n /M:"%line1text%"
	IF %ERRORLEVEL% EQU 1 echo. & call :usage
	goto :eof

:init
	set "__NAME=%~n0"
	set "__VERSION=0.01.1.windows"
	set "__YEAR=2023"

	set "__BAT_FILE=%~0"
	set "__BAT_PATH=%~dp0"
	set "__BAT_NAME=%~nx0"

	set "OptVerbose="

	set "UnNamedArgument="
	set "UnNamedOptionalArg="
	set "NamedFlag="

:parse
	if "%~1"=="" call :missing_argument & goto :end

	for %%Z in ("/" "-") do (
		if /i "%~1"=="%%~Z?" call :header & call :usage "%~2" & goto :end
		if /i "%~1"=="%%~Zv" call :version & goto :end

		if /i "%~1"=="%%~Ze" set "OptVerbose=yes" & shift & goto :parse

		if /i "%~1"=="%%~Zf" set "NamedFlag=%~2" & shift & shift & goto :parse
	)
	if /i "%~1"=="--help"    call :header & call :usage "%~2" & goto :end
	if /i "%~1"=="--version" call :version & goto :end

	if /i "%~1"=="--verbose" set "OptVerbose=yes" & shift & goto :parse

	if /i "%~1"=="--flag"    set "NamedFlag=%~2" & shift & shift & goto :parse

	if not defined UnNamedArgument     set "UnNamedArgument=%~1"     & shift & goto :parse
	if not defined UnNamedOptionalArg  set "UnNamedOptionalArg=%~1"  & shift & goto :parse

	shift
	goto :parse

:main
	if defined OptVerbose (
		echo **** DEBUG IS ON
	)

	echo UnNamedArgument:    "%UnNamedArgument%"

	if defined UnNamedOptionalArg      echo UnNamedOptionalArg: "%UnNamedOptionalArg%"
	if not defined UnNamedOptionalArg  echo UnNamedOptionalArg: not provided

	if defined NamedFlag         echo NamedFlag:    "%NamedFlag%"
	if not defined NamedFlag     echo NamedFlag:    not provided
	Echo.
	call :usage

:end
	call :cleanup
	exit /B

:cleanup
	REM The cleanup function is only really necessary if you
	REM   are _not_ using SETLOCAL.
	set "__NAME="
	set "__VERSION="
	set "__YEAR="

	set "__BAT_FILE="
	set "__BAT_PATH="
	set "__BAT_NAME="

	set "OptVerbose="

	set "UnNamedArgument="
	set "UnNamedArgument2="
	set "NamedFlag="

	goto :eof
