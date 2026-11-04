ip addr flush dev eth0
ip addr flush dev eth1
ip route flush all
sysctl -w net.ipv4.ip_forward=1
 
# A24: 10.74.16.88/30 (ke Phantoma)
ip addr add 10.74.16.90/30 dev eth0
ip link set eth0 up
 
# A25: 10.74.15.0/26 (Switch13: Lain, Mika) -> gateway 10.74.15.1
ip addr add 10.74.15.1/26 dev eth1
ip link set eth1 up
 
# Default ke Phantoma
ip route add default via 10.74.16.89
 
ip a
ip route