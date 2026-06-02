@echo off

set mappingpath=%~dp0

setlocal
cd c:/ODM/
call win32env.bat

start "ODM Console" cmd /k "echo  ____________________________ && echo /   ____    _____    __  __  \ && echo ^|  / __ \  ^|  __ \  ^|  \/  ^| ^| && echo ^| ^| ^|  ^| ^| ^| ^|  ^| ^| ^| \  / ^| ^| && echo ^| ^| ^|  ^| ^| ^| ^|  ^| ^| ^| ^|\/^| ^| ^| && echo ^| ^| ^|__^| ^| ^| ^|__^| ^| ^| ^|  ^| ^| ^| && echo ^|  \____/  ^|_____/  ^|_^|  ^|_^| ^| && echo \____________________________/ && @echo off && FOR /F %%i in (VERSION) do echo        version: %%i && @echo on && echo. && run %mappingpath% --fast-orthophoto --cog --orthophoto-compression JPEG --optimize-disk-space --feature-quality medium

endlocal
