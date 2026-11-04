ip addr flush dev eth0
ip addr flush dev eth1
ip route flush all
sysctl -w net.ipv4.ip_forward=1
 
# A7: 10.74.16.56/30 (ke Schumann)
ip addr add 10.74.16.58/30 dev eth0
ip link set eth0 up
 
# A8: 10.74.4.0/22 (Switch5: Omnipresence, Denpa) -> gateway 10.74.4.1
ip addr add 10.74.4.1/22 dev eth1
ip link set eth1 up
 
# Default ke Schumann
ip route add default via 10.74.16.57
 
ip a
ip route
