cd /d %USERPROFILE%\.huawei-liteos-studio\tools
REM "if proxy is needed,please delete 'REM' on lines below(NOTICE: EXCEPT THIS LINE) and input username, password(if spical character included, use escape character), server on line 3-5"
REM set username=
REM set password=
REM set server=
REM SET http_proxy=http://%username%:%password%@%server%:8080
REM SET https_proxy=http://%username%:%password%@%server%:8080
git clone "https://gitee.com/rtos_yuan/gnu-arm-embedded-toolchain.git" "arm-none-eabi"
rmdir /S /Q arm-none-eabi\.git
pause