@echo off

set Mainkey=HKCU\SOFTWARE\Microsoft\InputMethod\Settings\CHS

for /f %%i in ('reg query %MainKey% /v "Enable Double Pinyin" ^| findstr /i "0x1"') do (set flg=%%i)

reg add %MainKey% /v "Enable Double Pinyin" /t REG_DWORD /d 0x1 /f
echo switched to double pinyin
(echo switched to double pinyin
echo closing in 1s)|msg %username% /time:1
