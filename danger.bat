@echo off
mode 1000,1000
title Fullscreen Bytebeat
color 0A

:: Start sound in background
start "" powershell -c "& {while ($true) { [console]::beep(500+(Get-Random -Minimum 100 -Maximum 1000), 100); Start-Sleep -Milliseconds 100} }"

:: Create random box effect using mshta
echo <html><script>for(;;){WshShell=new ActiveXObject("WScript.Shell");x=Math.random()*screen.width;y=Math.random()*screen.height;w=Math.random()*300;h=Math.random()*300;c=Math.floor(Math.random()*16777215).toString(16);d=document.createElement('div');d.style='position:absolute;left:'+x+'px;top:'+y+'px;width:'+w+'px;height:'+h+'px;background:#'+c;document.body.appendChild(d);WScript.Sleep(100);}</script></html> > temp.html
start mshta temp.html

:: Keep it running
:loop
timeout /t 1 >nul
goto loop
