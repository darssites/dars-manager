@echo off

REM If the dars folder exists
if EXIST dars (
echo dars located...
REM Continue with the code
goto continue
) else (
REM Otherwise, end the program
echo error: dars not found! Please navigate to the dars containing folder and try again!
goto :EOF
)

:continue

if [%1] EQU [] (
echo Please give your project a name!
goto :EOF
)

xcopy /s dars %1\

python --version >py.txt
set /p pyout=<py.txt
if errorlevel 1 (
echo warning: Python isn't installed.
echo warning: Project "%1" was created, but was not tested.
)

If NOT "%pyout%"=="%pyout: 3.=%" (
    echo Yes
) else (
    echo warning: Python has to be version ^>3!
	echo warning: Project "%1" was created, but was not tested. 
)