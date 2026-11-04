ip addr flush dev eth0
ip addr flush dev eth1
ip route flush all
sysctl -w net.ipv4.ip_forward=1

# A13: 10.74.16.64/30 (ke Cyberia)
ip addr add 10.74.16.66/30 dev eth0
ip link set eth0 up

# A14: 10.74.16.68/30 (ke Tachibana)
ip addr add 10.74.16.69/30 dev eth1
ip link set eth1 up

# Default ke Cyberia
ip route add default via 10.74.16.65

# Semua jaringan di belakang Tachibana (.70)
ip route add 10.74.10.0/23 via 10.74.16.70
ip route add 10.74.14.128/25 via 10.74.16.70
ip route add 10.74.15.0/26 via 10.74.16.70
ip route add 10.74.15.128/26 via 10.74.16.70
ip route add 10.74.16.0/27 via 10.74.16.70
ip route add 10.74.16.48/29 via 10.74.16.70
ip route add 10.74.16.64/27 via 10.74.16.70

ip a
ip route