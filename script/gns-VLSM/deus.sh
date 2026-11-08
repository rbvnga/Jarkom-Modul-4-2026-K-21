ip addr flush dev eth0
ip addr flush dev eth1
ip addr flush dev eth2
ip route flush all
sysctl -w net.ipv4.ip_forward=1
 
# A16: 10.74.16.72/30 (ke Tachibana)
ip addr add 10.74.16.74/30 dev eth0
ip link set eth0 up
 
# A17: 10.74.14.128/25 (Switch10: Lilith, Specter) -> gateway 10.74.14.129
ip addr add 10.74.14.129/25 dev eth1
ip link set eth1 up
 
# A18: 10.74.16.76/30 (ke Protocol7)
ip addr add 10.74.16.77/30 dev eth2
ip link set eth2 up
 
ip route add default via 10.74.16.73           # sisanya ke Tachibana
# --- ke Protocol7 (.78) ---
ip route add 10.74.15.0/26 via 10.74.16.78     # A25
ip route add 10.74.15.128/26 via 10.74.16.78   # A19
ip route add 10.74.16.0/27 via 10.74.16.78     # A23
ip route add 10.74.16.48/29 via 10.74.16.78    # A21
ip route add 10.74.16.80/28 via 10.74.16.78    # ★ SUMMARY: A20, A22, A24
 
ip a
ip route