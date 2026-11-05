ip addr flush dev eth0
ip addr flush dev eth1
ip addr flush dev eth2
ip route flush all
sysctl -w net.ipv4.ip_forward=1
 
# A2: 10.74.16.32/29 (Switch2)
ip addr add 10.74.16.35/29 dev eth0
ip link set eth0 up
 
# A4: 10.74.15.192/26 (Juri) -> gateway 10.74.15.193
ip addr add 10.74.15.193/26 dev eth1
ip link set eth1 up
 
# A5: 10.74.8.0/23 (Switch4: Masayuki) -> gateway 10.74.8.1
ip addr add 10.74.8.1/23 dev eth2
ip link set eth2 up
 
# Default ke Cyberia
ip route add default via 10.74.16.33
 
ip a
ip route