net time \\$ip
at \\$ip $time "Powershell -Command 'Enable-PSRemoting -Force'"
at \\$ip $time+1 "Powershell -Command 'Set-Item wsman:\localhost\client\trustedhosts *'"
at \\$ip $time+2 "Powershell -Command 'Restart-Service WinRM'"
Enter-PSSession -ComputerName $ip -Credential $username
