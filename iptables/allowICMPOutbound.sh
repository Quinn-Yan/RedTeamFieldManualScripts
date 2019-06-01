iptables -A OUTPUT -i $iface -p icmp --icmp-type echo-request -j ACCEPT
iptables -A INPUT -o $iface -p icmp --icmp-type echo-reply -j ACCEPT
