ip addr flush dev eth0
ip addr flush dev eth1
ip addr flush dev eth2
ip route flush all
sysctl -w net.ipv4.ip_forward=1
 
# A18: 10.74.16.76/30 (ke Deus)
ip addr add 10.74.16.78/30 dev eth0
ip link set eth0 up
 
# A19: 10.74.15.128/26 (Switch11: Chisa, Hodgeson) -> gateway 10.74.15.129
ip addr add 10.74.15.129/26 dev eth1
ip link set eth1 up
 
# A20: 10.74.16.80/30 (ke Knights)
ip addr add 10.74.16.81/30 dev eth2
ip link set eth2 up
 
# Default ke Deus
ip route add default via 10.74.16.77
 
# Semua jaringan di belakang Knights (.82)
ip route add 10.74.15.0/26 via 10.74.16.82
ip route add 10.74.16.0/27 via 10.74.16.82
ip route add 10.74.16.48/29 via 10.74.16.82
ip route add 10.74.16.84/30 via 10.74.16.82
ip route add 10.74.16.88/30 via 10.74.16.82
 
ip a
ip route