Get-WmiObject -ComputerName $domaincontroller -Namespace root\microsoftDNS -Class MicrosoftDNS_ResourceRecord -Filter "domainname='$domain'" | select textrepresentation
