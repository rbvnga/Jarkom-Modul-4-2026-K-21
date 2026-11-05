ip addr flush dev eth0
ip addr flush dev eth1
ip addr flush dev eth2
ip route flush all
sysctl -w net.ipv4.ip_forward=1
 
# A22: 10.74.16.84/30 (ke Knights)
ip addr add 10.74.16.86/30 dev eth0
ip link set eth0 up
 
# A23: 10.74.16.0/27 (Switch12: Semi) -> gateway 10.74.16.1
ip addr add 10.74.16.1/27 dev eth1
ip link set eth1 up
 
# A24: 10.74.16.88/30 (ke Shibuya)
ip addr add 10.74.16.89/30 dev eth2
ip link set eth2 up
 
# Default ke Knights
ip route add default via 10.74.16.85
 
# Jaringan A25 di belakang Shibuya (.90)
ip route add 10.74.15.0/26 via 10.74.16.90
 
ip a
ip route