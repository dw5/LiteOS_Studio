cd /d %USERPROFILE%\.huawei-liteos-studio\extensions
REM "if proxy is needed,please delete 'REM' on line 4-8,and input username, password, server on line 4-6"
REM set username=
REM set password=
REM set server=
REM SET http_proxy=http://%username%:%password%@%server%:8080
REM SET https_proxy=http://%username%:%password%@%server%:8080
git clone "https://gitee.com/liteosstudio/extension-collections.git"
COPY /Y ".\extension-collections\1.45.1\MS-CEINTL.vscode-language-pack-zh-hans-1.45.1.vsix" ".\extension-collections\MS-CEINTL.vscode-language-pack-zh-hans-1.45.1.vsix"
rmdir /S /Q extension-collections\.git
rmdir /S /Q extension-collections\1.45.1
pause

