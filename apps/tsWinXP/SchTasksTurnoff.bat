@::!/dos/rocks
@echo off & chcp 65001>nul
@:: https://stackoverflow.com/questions/26551#answer-45070967
goto :init

:header
	echo %__NAME% v%__VERSION%
	echo This is a sample batch file template,
	echo providing command-line arguments and flags.
	echo.
	goto :eof

:usage
	echo USAGE:
	echo   %__BAT_NAME% [flags] "required argument" "optional argument"
	echo.
	echo.  /?, --help           shows this help
	echo.  /v, --version        shows the version
	echo.  /e, --verbose        shows detailed output
	echo.  -f, --flag value     specifies a named parameter value
	goto :eof

:version
	if "%~1"=="full" call :header & goto :eof
	echo %__VERSION%
	goto :eof

:missing_argument
	call :header
	call :usage
	echo.
	echo ****    MISSING "REQUIRED ARGUMENT"    ****
	echo.
	goto :eof

:init
	set "__NAME=%~n0"
	set "__VERSION=1.24"
	set "__YEAR=2023"

	set "__BAT_FILE=%~0"
	set "__BAT_PATH=%~dp0"
	set "__BAT_NAME=%~nx0"

	set "OptHelp="
	set "OptVersion="
	set "OptVerbose="

	set "UnNamedArgument="
	set "UnNamedOptionalArg="
	set "NamedFlag="

:parse
	if "%~1"=="" goto :validate

	if /i "%~1"=="/?"         call :header & call :usage "%~2" & goto :end
	if /i "%~1"=="-?"         call :header & call :usage "%~2" & goto :end
	if /i "%~1"=="--help"     call :header & call :usage "%~2" & goto :end

	if /i "%~1"=="/v"         call :version      & goto :end
	if /i "%~1"=="-v"         call :version      & goto :end
	if /i "%~1"=="--version"  call :version full & goto :end

	if /i "%~1"=="/e"         set "OptVerbose=yes"  & shift & goto :parse
	if /i "%~1"=="-e"         set "OptVerbose=yes"  & shift & goto :parse
	if /i "%~1"=="--verbose"  set "OptVerbose=yes"  & shift & goto :parse

	if /i "%~1"=="--flag"     set "NamedFlag=%~2"   & shift & shift & goto :parse
	if /i "%~1"=="-f"         set "NamedFlag=%~2"   & shift & shift & goto :parse

	if not defined UnNamedArgument     set "UnNamedArgument=%~1"     & shift & goto :parse
	if not defined UnNamedOptionalArg  set "UnNamedOptionalArg=%~1"  & shift & goto :parse

	shift
	goto :parse

:validate
	if not defined UnNamedArgument call :missing_argument & goto :end

:main
	if defined OptVerbose (
		echo **** DEBUG IS ON
	)

	echo UnNamedArgument:    "%UnNamedArgument%"

	if defined UnNamedOptionalArg      echo UnNamedOptionalArg: "%UnNamedOptionalArg%"
	if not defined UnNamedOptionalArg  echo UnNamedOptionalArg: not provided

	if defined NamedFlag               echo NamedFlag:          "%NamedFlag%"
	if not defined NamedFlag           echo NamedFlag:          not provided

:end
	call :cleanup
	exit /B

:cleanup
	REM The cleanup function is only really necessary if you
	REM are _not_ using SETLOCAL.
	set "__NAME="
	set "__VERSION="
	set "__YEAR="

	set "__BAT_FILE="
	set "__BAT_PATH="
	set "__BAT_NAME="

	set "OptHelp="
	set "OptVersion="
	set "OptVerbose="

	set "UnNamedArgument="
	set "UnNamedArgument2="
	set "NamedFlag="

	goto :eof
