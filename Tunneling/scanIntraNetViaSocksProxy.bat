socks.exe -i1.1.1.1 -p 8080

# Attacker
Add line
socks4 1.1.1.1 8080

# use command
proxychains nmap -PN -vv -sT -p 22,135,139,445 2.2.2.2
