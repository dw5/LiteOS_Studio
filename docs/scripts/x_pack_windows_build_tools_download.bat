cd /d %USERPROFILE%\.huawei-liteos-studio\tools
REM "if proxy is needed,please delete 'REM' on lines below(NOTICE: EXCEPT THIS LINE) and input username, password(if spical character included, use escape character), server on line 3-5"
REM set username=
REM set password=
REM set server=
REM SET http_proxy=http://%username%:%password%@%server%:8080
REM SET https_proxy=http://%username%:%password%@%server%:8080
git clone "https://gitee.com/liteosstudio/x-pack-windows-build-tools.git" "build"
ECHO D | XCOPY "./build/xpack-windows-build-tools-2.12.2-win32-x64" "./build" /E /Y
rmdir /S /Q build\.git
rmdir /S /Q build\xpack-windows-build-tools-2.12.2-win32-x64
pause