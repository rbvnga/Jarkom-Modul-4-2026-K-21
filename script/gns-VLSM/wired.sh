ip addr flush dev eth0
ip addr flush dev eth1
ip addr flush dev eth2
ip route flush all
sysctl -w net.ipv4.ip_forward=1

# A13: 10.74.16.64/30 (ke Cyberia)
ip addr add 10.74.16.66/30 dev eth0
ip link set eth0 up

# A14: 10.74.16.68/30 (ke Tachibana)
ip addr add 10.74.16.69/30 dev eth1
ip link set eth1 up

# A9: 10.74.16.60/30 (ke Navi)
ip addr add 10.74.16.61/30 dev eth2
ip link set eth2 up

# Default ke Cyberia
ip route add default via 10.74.16.65           # sisanya ke Cyberia
# --- ke Navi (.62) ---
ip route add 10.74.12.0/23 via 10.74.16.62     # ★ SUMMARY: A10 + A12
ip route add 10.74.15.64/26 via 10.74.16.62    # A11 Taro
# --- ke Tachibana (.70) ---
ip route add 10.74.10.0/23 via 10.74.16.70     # A15
ip route add 10.74.14.128/25 via 10.74.16.70   # A17
ip route add 10.74.15.0/26 via 10.74.16.70     # A25
ip route add 10.74.15.128/26 via 10.74.16.70   # A19
ip route add 10.74.16.0/27 via 10.74.16.70     # A23
ip route add 10.74.16.48/29 via 10.74.16.70    # A21
ip route add 10.74.16.64/27 via 10.74.16.70    # ★ SUMMARY: A16, A18, A20, A22, A24 (A13, A14 terhubung langsung)

ip a
ip route
 