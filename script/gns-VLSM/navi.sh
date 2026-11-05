ip addr flush dev eth0
ip addr flush dev eth1
ip addr flush dev eth2
ip addr flush dev eth3
ip route flush all
sysctl -w net.ipv4.ip_forward=1
 
# A9: 10.74.16.60/30 (ke Cyberia)
ip addr add 10.74.16.62/30 dev eth0
ip link set eth0 up
 
# A10: 10.74.12.0/24 (Switch6: Alice, Reika) -> gateway 10.74.12.1
ip addr add 10.74.12.1/24 dev eth1
ip link set eth1 up
 
# A11: 10.74.15.64/26 (Switch7: Taro) -> gateway 10.74.15.65
ip addr add 10.74.15.65/26 dev eth2
ip link set eth2 up
 
# A12: 10.74.13.0/24 (Switch8: Kuma, Miho, Yasuo) -> gateway 10.74.13.1
ip addr add 10.74.13.1/24 dev eth3
ip link set eth3 up
 
# Default ke Cyberia
ip route add default via 10.74.16.61
 
ip a
ip route