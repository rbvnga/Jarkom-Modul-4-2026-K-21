ip addr flush dev eth0
ip addr flush dev eth1
ip addr flush dev eth2
ip route flush all
sysctl -w net.ipv4.ip_forward=1
 
# A14: 10.74.16.68/30 (ke Wired)
ip addr add 10.74.16.70/30 dev eth0
ip link set eth0 up
 
# A15: 10.74.10.0/23 (Switch9: Collective, Ghost) -> gateway 10.74.10.1
ip addr add 10.74.10.1/23 dev eth1
ip link set eth1 up
 
# A16: 10.74.16.72/30 (ke Deus)
ip addr add 10.74.16.73/30 dev eth2
ip link set eth2 up
 
ip route add default via 10.74.16.69          
# --- ke Deus (.74) ---
ip route add 10.74.14.128/25 via 10.74.16.74   # A17
ip route add 10.74.15.0/26 via 10.74.16.74     # A25
ip route add 10.74.15.128/26 via 10.74.16.74   # A19
ip route add 10.74.16.0/27 via 10.74.16.74     # A23
ip route add 10.74.16.48/29 via 10.74.16.74    # A21
ip route add 10.74.16.76/30 via 10.74.16.74    # A18
ip route add 10.74.16.80/28 via 10.74.16.74    # SUMMARY: A20, A22, A24

ip a
ip route
