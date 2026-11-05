# JJ | A1 (Cyberia > JJ, MyuMyu) | 10.74.14.0/25 | Gateway: Cyberia eth1
auto eth0
iface eth0 inet static
    address 10.74.14.2
    netmask 255.255.255.128
    gateway 10.74.14.1

# MyuMyu | A1 (Cyberia > JJ, MyuMyu) | 10.74.14.0/25 | Gateway: Cyberia eth1
auto eth0
iface eth0 inet static
    address 10.74.14.3
    netmask 255.255.255.128
    gateway 10.74.14.1

# Karl | A3 (Psyche > Switch3 > Lin, Karl) | 10.74.0.0/22 | Gateway: Psyche eth1
auto eth0
iface eth0 inet static
    address 10.74.0.2
    netmask 255.255.252.0
    gateway 10.74.0.1

# Lin | A3 (Psyche > Switch3 > Lin, Karl) | 10.74.0.0/22 | Gateway: Psyche eth1
auto eth0
iface eth0 inet static
    address 10.74.0.3
    netmask 255.255.252.0
    gateway 10.74.0.1

# Juri | A4 (Copland > Juri) | 10.74.15.192/26 | Gateway: Copland eth1
auto eth0
iface eth0 inet static
    address 10.74.15.194
    netmask 255.255.255.192
    gateway 10.74.15.193

# Masayuki | A5 (Copland > Switch4 > Masayuki) | 10.74.8.0/23 | Gateway: Copland eth2
auto eth0
iface eth0 inet static
    address 10.74.8.2
    netmask 255.255.254.0
    gateway 10.74.8.1

# Akashic | A6 (Schumann > Akashic) | 10.74.16.40/29 | Gateway: Schumann eth1
auto eth0
iface eth0 inet static
    address 10.74.16.42
    netmask 255.255.255.248
    gateway 10.74.16.41

# Omnipresence | A8 (Acceta > Switch5 > Omnipresence, Denpa) | 10.74.4.0/22 | Gateway: Acceta eth1
auto eth0
iface eth0 inet static
    address 10.74.4.2
    netmask 255.255.252.0
    gateway 10.74.4.1

# Denpa | A8 (Acceta > Switch5 > Omnipresence, Denpa) | 10.74.4.0/22 | Gateway: Acceta eth1
auto eth0
iface eth0 inet static
    address 10.74.4.3
    netmask 255.255.252.0
    gateway 10.74.4.1

# Alice | A10 (Navi > Switch6 > Alice, Reika) | 10.74.12.0/24 | Gateway: Navi eth1
auto eth0
iface eth0 inet static
    address 10.74.12.2
    netmask 255.255.255.0
    gateway 10.74.12.1

# Reika | A10 (Navi > Switch6 > Alice, Reika) | 10.74.12.0/24 | Gateway: Navi eth1
auto eth0
iface eth0 inet static
    address 10.74.12.3
    netmask 255.255.255.0
    gateway 10.74.12.1

# Taro | A11 (Navi > Switch7 > Taro) | 10.74.15.64/26 | Gateway: Navi eth2
auto eth0
iface eth0 inet static
    address 10.74.15.66
    netmask 255.255.255.192
    gateway 10.74.15.65

# Kuma | A12 (Navi > Switch8 > Kuma, Miho, Yasuo) | 10.74.13.0/24 | Gateway: Navi eth3
auto eth0
iface eth0 inet static
    address 10.74.13.2
    netmask 255.255.255.0
    gateway 10.74.13.1

# Miho | A12 (Navi > Switch8 > Kuma, Miho, Yasuo) | 10.74.13.0/24 | Gateway: Navi eth3
auto eth0
iface eth0 inet static
    address 10.74.13.3
    netmask 255.255.255.0
    gateway 10.74.13.1

# Yasuo | A12 (Navi > Switch8 > Kuma, Miho, Yasuo) | 10.74.13.0/24 | Gateway: Navi eth3
auto eth0
iface eth0 inet static
    address 10.74.13.4
    netmask 255.255.255.0
    gateway 10.74.13.1

# Collective | A15 (Tachibana > Switch9 > Collective, Ghost) | 10.74.10.0/23 | Gateway: Tachibana eth1
auto eth0
iface eth0 inet static
    address 10.74.10.2
    netmask 255.255.254.0
    gateway 10.74.10.1

# Ghost | A15 (Tachibana > Switch9 > Collective, Ghost) | 10.74.10.0/23 | Gateway: Tachibana eth1
auto eth0
iface eth0 inet static
    address 10.74.10.3
    netmask 255.255.254.0
    gateway 10.74.10.1

# Lilith | A17 (Deus > Switch10 > Lilith, Specter) | 10.74.14.128/25 | Gateway: Deus eth1
auto eth0
iface eth0 inet static
    address 10.74.14.130
    netmask 255.255.255.128
    gateway 10.74.14.129

# Specter | A17 (Deus > Switch10 > Lilith, Specter) | 10.74.14.128/25 | Gateway: Deus eth1
auto eth0
iface eth0 inet static
    address 10.74.14.131
    netmask 255.255.255.128
    gateway 10.74.14.129

# Chisa | A19 (Protocol7 > Switch11 > Chisa, Hodgeson) | 10.74.15.128/26 | Gateway: Protocol7 eth1
auto eth0
iface eth0 inet static
    address 10.74.15.130
    netmask 255.255.255.192
    gateway 10.74.15.129

# Hodgeson | A19 (Protocol7 > Switch11 > Chisa, Hodgeson) | 10.74.15.128/26 | Gateway: Protocol7 eth1
auto eth0
iface eth0 inet static
    address 10.74.15.131
    netmask 255.255.255.192
    gateway 10.74.15.129

# Eri | A21 (Knights > Eri) | 10.74.16.48/29 | Gateway: Knights eth1
auto eth0
iface eth0 inet static
    address 10.74.16.50
    netmask 255.255.255.248
    gateway 10.74.16.49

# Semi | A23 (Phantoma > Switch12 > Semi) | 10.74.16.0/27 | Gateway: Phantoma eth1
auto eth0
iface eth0 inet static
    address 10.74.16.2
    netmask 255.255.255.224
    gateway 10.74.16.1

# Lain | A25 (Shibuya > Switch13 > Lain, Mika) | 10.74.15.0/26 | Gateway: Shibuya eth1
auto eth0
iface eth0 inet static
    address 10.74.15.2
    netmask 255.255.255.192
    gateway 10.74.15.1

# Mika | A25 (Shibuya > Switch13 > Lain, Mika) | 10.74.15.0/26 | Gateway: Shibuya eth1
auto eth0
iface eth0 inet static
    address 10.74.15.3
    netmask 255.255.255.192
    gateway 10.74.15.1