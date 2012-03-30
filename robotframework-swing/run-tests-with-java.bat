set LIB_DIR=lib

set CP=.
For %%d In (%LIB_DIR%\*.jar) Do (
 call :set_cp %%d
)
set CLASSPATH=%CP%

java org.robotframework.RobotFramework --loglevel debug --variable RESOURCES:src\main\robot\resource --outputdir "target\robot"  src\main\robot\suite
rem java -cp lib/robotframework-2.6.3.jar;lib/swinglibrary-1.2.jar org.robotframework.RobotFramework --loglevel debug --variable RESOURCES:src\main\robot\resource --outputdir "target\robot"  src\main\robot\suite

goto :eof

:: Helper for setting variables inside a for loop
:set_cp
    set CP=%CP%;%1
goto :eof