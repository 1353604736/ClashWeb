@echo off &title Clash ����
::CODER BY pcysanji 2020-02-24
SET PATH="%~dp0";"%~dp0App";%PATH%
start /min http://127.0.0.1:10086&cls
python api.py
ping -n 3 127.0.0.1 > nul
echo �ɹ�����Web��&pause >NUL 2>NUL