cd /d %USERPROFILE%\.huawei-liteos-studio\tools
REM "if proxy is needed,please delete 'REM' on line 4-8,and input username, password, server on line 4-6"
REM set username=
REM set password=
REM set server=
REM SET http_proxy=http://%username%:%password%@%server%:8080
REM SET https_proxy=http://%username%:%password%@%server%:8080
git clone "https://gitee.com/liteosstudio/gnu-arm-embedded-toolchain.git" "arm-none-eabi"
rmdir /S /Q arm-none-eabi\.git
pause