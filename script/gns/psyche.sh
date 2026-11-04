ip addr flush dev eth0
ip addr flush dev eth1
ip route flush all
sysctl -w net.ipv4.ip_forward=1
 
# A2: 10.74.16.32/29 (Switch2)
ip addr add 10.74.16.34/29 dev eth0
ip link set eth0 up
 
# A3: 10.74.0.0/22 (Switch3: Karl, Lin) -> gateway 10.74.0.1
ip addr add 10.74.0.1/22 dev eth1
ip link set eth1 up
 
# Default ke Cyberia
ip route add default via 10.74.16.33
 
ip a
ip route