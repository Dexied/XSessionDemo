@echo off
setlocal
cd /d "%~dp0"

for %%f in (*.uproject) do (
    echo Generating project files for %%~f...
    call "B:\UnrealEngine\UE_5.8\Engine\Binaries\DotNET\UnrealBuildTool\UnrealBuildTool.exe" -projectfiles -project="%%~dp0%%~f" -game -engine
    goto done
)

echo Error: .uproject file not found in %~dp0
pause
exit /b 1

:done
echo Done!
pause
endlocal
