ip addr flush dev eth0
ip addr flush dev eth1
ip addr flush dev eth2
ip route flush all
sysctl -w net.ipv4.ip_forward=1
 
# A2: 10.74.16.32/29 (Switch2)
ip addr add 10.74.16.36/29 dev eth0
ip link set eth0 up
 
# A6: 10.74.16.40/29 (Akashic) -> gateway 10.74.16.41
ip addr add 10.74.16.41/29 dev eth1
ip link set eth1 up
 
# A7: 10.74.16.56/30 (ke Acceta)
ip addr add 10.74.16.57/30 dev eth2
ip link set eth2 up
 
# Default ke Cyberia
ip route add default via 10.74.16.33
# Ke jaringan A8 via Acceta (.58)
ip route add 10.74.4.0/22 via 10.74.16.58
 
ip a
ip route
 