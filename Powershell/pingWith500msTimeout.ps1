$ping = New-Object System.Net.Networkinformation.ping
$ping.Send("$ip",500)
