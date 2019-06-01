powershell.exe -Command "do {if ((Get-Date -format yyyyMMdd-HHmm) -match '201308(0[8-9]|1[0-1])-([8-9]|1[0-7])[0-5][0-9]'){Start-Process -WindowStyle Hidden 
C:\Temp\my.exe";Start-Sleep -s 14400}}while(1)"
