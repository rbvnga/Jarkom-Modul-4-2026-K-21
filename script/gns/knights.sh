ip addr flush dev eth0
ip addr flush dev eth1
ip addr flush dev eth2
ip route flush all
sysctl -w net.ipv4.ip_forward=1
 
# A20: 10.74.16.80/30 (ke Protocol7)
ip addr add 10.74.16.82/30 dev eth0
ip link set eth0 up
 
# A21: 10.74.16.48/29 (Eri) -> gateway 10.74.16.49
ip addr add 10.74.16.49/29 dev eth1
ip link set eth1 up
 
# A22: 10.74.16.84/30 (ke Phantoma)
ip addr add 10.74.16.85/30 dev eth2
ip link set eth2 up
 
# Default ke Protocol7
ip route add default via 10.74.16.81
 
# Semua jaringan di belakang Phantoma (.86)
ip route add 10.74.15.0/26 via 10.74.16.86
ip route add 10.74.16.0/27 via 10.74.16.86
ip route add 10.74.16.88/30 via 10.74.16.86
 
ip a
ip route
 