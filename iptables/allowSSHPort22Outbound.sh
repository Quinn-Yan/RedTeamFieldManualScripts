iptables -A OUTPUT -o $iface -p tcp --dport 22 -m state --state NEW,ESTABLISHED -j ACCEPT
iptables -A INPUT -i $iface -p tcp --sport 22 -m state --state ESTABLISHED -j ACCEPT
