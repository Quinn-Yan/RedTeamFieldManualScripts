#Attacker
Modify /etc/stunnel.conf
	client = yes
	[netcat client]
	accept = 5555
	connect = -Listening IP-:4444

# on victim
Modify /etc/stunnel.conf
	client = no
	[netcat server]
	accept = 4444
	connect = 7777

C:\>nc -vlp 7777

# Attacker
nc -nv 127.0.0.1 5555
