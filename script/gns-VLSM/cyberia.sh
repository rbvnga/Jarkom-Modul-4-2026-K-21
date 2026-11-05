# 1. Reset total
ip addr flush dev eth0
ip addr flush dev eth1
ip addr flush dev eth2
ip addr flush dev eth4
ip route flush all
sysctl -w net.ipv4.ip_forward=1

# 2. Interface ke NAT (eth0) - ganti IP jika subnet NAT-mu berbeda
ip addr add 192.168.122.50/24 dev eth0
ip link set eth0 up
ip route add default via 192.168.122.1

# 3. A1: 10.74.14.0/25 (ke Switch1: JJ, MyuMyu)
ip addr add 10.74.14.1/25 dev eth1
ip link set eth1 up

# 4. A2: 10.74.16.32/29 (ke Switch2: Psyche, Copland, Schumann)
ip addr add 10.74.16.33/29 dev eth2
ip link set eth2 up

# 6. A13: 10.74.16.64/30 (ke Wired)
ip addr add 10.74.16.65/30 dev eth4
ip link set eth4 up

# 7. Routing statis
# Via Psyche (.34)
ip route add 10.74.0.0/22 via 10.74.16.34
# Via Copland (.35)
ip route add 10.74.8.0/23 via 10.74.16.35
ip route add 10.74.15.192/26 via 10.74.16.35
# Via Schumann (.36)
ip route add 10.74.4.0/22 via 10.74.16.36
ip route add 10.74.16.40/29 via 10.74.16.36
ip route add 10.74.16.56/30 via 10.74.16.36
# Via Wired (.66)
ip route add 10.74.10.0/23 via 10.74.16.66
ip route add 10.74.14.128/25 via 10.74.16.66
ip route add 10.74.15.0/26 via 10.74.16.66
ip route add 10.74.15.128/26 via 10.74.16.66
ip route add 10.74.16.0/27 via 10.74.16.66
ip route add 10.74.16.48/29 via 10.74.16.66
ip route add 10.74.16.64/27 via 10.74.16.66
ip route add 10.74.12.0/23 via 10.74.16.66
ip route add 10.74.15.64/26 via 10.74.16.66
ip route add 10.74.16.60/30 via 10.74.16.66
# 8. NAT & DNS
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
echo "nameserver 8.8.8.8" > /etc/resolv.conf

# 9. Validasi
ip a
ip route
ping -c 2 8.8.8.8