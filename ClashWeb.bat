mode con cols=44 lines=24
color f1
@echo off &title ClashWeb
taskkill /F /IM python.exe
wscript "startclashweb.vbs"  &cls

:menu
cls
echo.
echo.
echo -------------------------------------
echo.
echo  ClashWeb����̨
echo.
echo.  [1]   �򿪿���̨
echo.
echo.  [2]   �رտ���̨ 
echo.
echo.  [3]   ����� 
echo.
echo.  [4]   ��subconverter 
echo.
echo.  [X]   �˳� 
echo.
echo -------------------------------------
echo.
choice /C:1234X /N /M "���������ѡ�� ��"

if errorlevel 5 goto :exit
if errorlevel 4 goto :startsubconverter
if errorlevel 3 goto :startdasoboard
if errorlevel 2 goto :stopclashweb
if errorlevel 1 goto :openclahweb

:startsubconverter
taskkill /IM subconverter.exe >NUL 2>NUL
cd ./App/subconverter
wscript start-subconverter.vbs
cd ../
cd ../
echo.
echo -------------------------------------
echo.
echo  ����subconverter�ɹ���
echo.
echo -------------------------------------
echo.
ping -n 3 127.0.0.1 > nul
goto menu

:openclahweb
wscript "startclashweb.vbs"  &cls
echo.
echo -------------------------------------
echo.
echo  ����python����̨�ɹ���
echo.
echo -------------------------------------
echo.
ping -n 3 127.0.0.1 > nul
goto menu

:stopclashweb
taskkill /F /IM python.exe &cls
echo.
echo -------------------------------------
echo.
echo  �ر�python����̨�ɹ���
echo.
echo -------------------------------------
echo.
ping -n 3 127.0.0.1 > nul
goto menu

:startdasoboard
start http://127.0.0.1:9090/ui/#/proxies &cls
echo.
echo -------------------------------------
echo.
echo  �����ɹ�
echo.
echo -------------------------------------
echo.
ping -n 3 127.0.0.1 > nul
goto menu

:exit
taskkill /F /IM python.exe  &cls
echo.
echo -------------------------------------
echo.
echo �˳�����ر�Clash�ںˣ�Ҫ�ر�Clash�ں�������ҳ�йرա�
echo.
echo -------------------------------------
echo.
echo ��������˳� &pause >NUL 2>NUL
exit
