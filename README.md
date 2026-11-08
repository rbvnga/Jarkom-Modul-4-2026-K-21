# Jarkom-Modul-4-2026-K-21

| Nama                          | NRP        |
| ----------------------------- | ---------- |
| Revalinda Bunga Nayla Laksono | 5027251011 |
| Najla Tufailah                | 5027251078 |

# Hasil Subnetting VLSM dan CIDR 
https://docs.google.com/spreadsheets/d/12yhZsVqgc-6eMviqDfuFbwyfBeCnNJgP/edit?usp=sharing&ouid=102900172779478181126&rtpof=true&sd=true 

## 1. VLSM

### 1.1 Topologi VLSM di gns
<img src="assets/VLSM/TOPOLOGI VLSM MODUL 4.png">

### 1.2 Konsep Subnet

Satu subnet (Ax) adalah satu **broadcast domain**: interface router, semua switch di belakangnya, dan semua host yang tersambung, sampai bertemu interface router lain. Switch bekerja di Layer 2 sehingga tidak memisahkan subnet dan tidak memerlukan IP. Link NAT berada di luar perhitungan subnet.

### 1.3  Perhitungan Jumlah IP dan Prefix

###  Tabel Kebutuhan Subnet

| Subnet | Rute | Perhitungan | Jumlah IP | Prefix |
|---|---|---|---|---|
| A1 | Cyberia > Switch 1 > JJ, MyuMyu | 95 + 30 + 1 | 126 | /25 |
| A2 | Cyberia > Switch 2 > Psyche, Copland, Schumann | 4 interface router | 4 | /29 |
| A3 | Psyche > Switch 3 > Lin, Karl | 180 + 700 + 1 | 881 | /22 |
| A4 | Copland > Juri | 31 + 1 | 32 | /26 |
| A5 | Copland > Switch 4 > Masayuki | 300 + 1 | 301 | /23 |
| A6 | Schumann > Akashic | 3 + 1 | 4 | /29 |
| A7 | Schumann > Acceta | 2 interface router | 2 | /30 |
| A8 | Acceta > Switch 5 > Omnipresence, Denpa | 510 + 3 + 1 | 514 | /22 |
| A9 | Wired > Navi | 2 interface router | 2 | /30 |
| A10 | Navi > Switch 6 > Alice, Reika | 208 + 45 + 1 | 254 | /24 |
| A11 | Navi > Switch 7 > Taro | 57 + 1 | 58 | /26 |
| A12 | Navi > Switch 8 > Kuma, Miho, Yasuo | 4 + 18 + 120 + 1 | 143 | /24 |
| A13 | Cyberia > Wired | 2 interface router | 2 | /30 |
| A14 | Wired > Tachibana | 2 interface router | 2 | /30 |
| A15 | Tachibana > Switch 9 > Collective, Ghost | 260 + 6 + 1 | 267 | /23 |
| A16 | Tachibana > Deus | 2 interface router | 2 | /30 |
| A17 | Deus > Switch 10 > Lilith, Specter | 77 + 21 + 1 | 99 | /25 |
| A18 | Deus > Protocol7 | 2 interface router | 2 | /30 |
| A19 | Protocol7 > Switch 11 > Chisa, Hodgeson | 23 + 9 + 1 | 33 | /26 |
| A20 | Protocol7 > Knights | 2 interface router | 2 | /30 |
| A21 | Knights > Eri | 2 + 1 | 3 | /29 |
| A22 | Knights > Phantoma | 2 interface router | 2 | /30 |
| A23 | Phantoma > Switch 12 > Semi | 14 + 1 | 15 | /27 |
| A24 | Phantoma > Shibuya | 2 interface router | 2 | /30 |
| A25 | Shibuya > Switch 13 > Lain, Mika | 57 + 4 + 1 | 62 | /26 |
| **Total** | | | **2814** | **/19** |

 Blok induk minimal **/19** (8192 alamat). Total usable = 4188 − (25 × 2) = **4138**. Alokasi berakhir di 10.74.16.91, sisa blok 10.74.16.92 sampai 10.74.31.255 menjadi cadangan.
---

## 1.4 Pengurutan VLSM

### Hasil Alokasi

| Subnet | Prefix | Ukuran Blok | Network ID | Netmask | Broadcast | Range IP |
|---|---|---|---|---|---|---|
| A3 | /22 | 1024 | 10.74.0.0 | 255.255.252.0 | 10.74.3.255 | 10.74.0.1 – 10.74.3.254 |
| A8 | /22 | 1024 | 10.74.4.0 | 255.255.252.0 | 10.74.7.255 | 10.74.4.1 – 10.74.7.254 |
| A5 | /23 | 512 | 10.74.8.0 | 255.255.254.0 | 10.74.9.255 | 10.74.8.1 – 10.74.9.254 |
| A15 | /23 | 512 | 10.74.10.0 | 255.255.254.0 | 10.74.11.255 | 10.74.10.1 – 10.74.11.254 |
| A10 | /24 | 256 | 10.74.12.0 | 255.255.255.0 | 10.74.12.255 | 10.74.12.1 – 10.74.12.254 |
| A12 | /24 | 256 | 10.74.13.0 | 255.255.255.0 | 10.74.13.255 | 10.74.13.1 – 10.74.13.254 |
| A1 | /25 | 128 | 10.74.14.0 | 255.255.255.128 | 10.74.14.127 | 10.74.14.1 – 10.74.14.126 |
| A17 | /25 | 128 | 10.74.14.128 | 255.255.255.128 | 10.74.14.255 | 10.74.14.129 – 10.74.14.254 |
| A25 | /26 | 64 | 10.74.15.0 | 255.255.255.192 | 10.74.15.63 | 10.74.15.1 – 10.74.15.62 |
| A11 | /26 | 64 | 10.74.15.64 | 255.255.255.192 | 10.74.15.127 | 10.74.15.65 – 10.74.15.126 |
| A19 | /26 | 64 | 10.74.15.128 | 255.255.255.192 | 10.74.15.191 | 10.74.15.129 – 10.74.15.190 |
| A4 | /26 | 64 | 10.74.15.192 | 255.255.255.192 | 10.74.15.255 | 10.74.15.193 – 10.74.15.254 |
| A23 | /27 | 32 | 10.74.16.0 | 255.255.255.224 | 10.74.16.31 | 10.74.16.1 – 10.74.16.30 |
| A2 | /29 | 8 | 10.74.16.32 | 255.255.255.248 | 10.74.16.39 | 10.74.16.33 – 10.74.16.38 |
| A6 | /29 | 8 | 10.74.16.40 | 255.255.255.248 | 10.74.16.47 | 10.74.16.41 – 10.74.16.46 |
| A21 | /29 | 8 | 10.74.16.48 | 255.255.255.248 | 10.74.16.55 | 10.74.16.49 – 10.74.16.54 |
| A7 | /30 | 4 | 10.74.16.56 | 255.255.255.252 | 10.74.16.59 | 10.74.16.57 – 10.74.16.58 |
| A9 | /30 | 4 | 10.74.16.60 | 255.255.255.252 | 10.74.16.63 | 10.74.16.61 – 10.74.16.62 |
| A13 | /30 | 4 | 10.74.16.64 | 255.255.255.252 | 10.74.16.67 | 10.74.16.65 – 10.74.16.66 |
| A14 | /30 | 4 | 10.74.16.68 | 255.255.255.252 | 10.74.16.71 | 10.74.16.69 – 10.74.16.70 |
| A16 | /30 | 4 | 10.74.16.72 | 255.255.255.252 | 10.74.16.75 | 10.74.16.73 – 10.74.16.74 |
| A18 | /30 | 4 | 10.74.16.76 | 255.255.255.252 | 10.74.16.79 | 10.74.16.77 – 10.74.16.78 |
| A20 | /30 | 4 | 10.74.16.80 | 255.255.255.252 | 10.74.16.83 | 10.74.16.81 – 10.74.16.82 |
| A22 | /30 | 4 | 10.74.16.84 | 255.255.255.252 | 10.74.16.87 | 10.74.16.85 – 10.74.16.86 |
| A24 | /30 | 4 | 10.74.16.88 | 255.255.255.252 | 10.74.16.91 | 10.74.16.89 – 10.74.16.90 |


---

## 1.5 VLSM Tree

<img src="assets/VLSM/VLSM Tree.png">

---

## 1.6 Pengalamatan Interface Router

| Router | Interface | Subnet | IP |
|---|---|---|---|
| **Cyberia** | eth0 | NAT | 192.168.122.50/24 |
| | eth1 | A1 | 10.74.14.1/25 |
| | eth2 | A2 | 10.74.16.33/29 |
| | eth4 | A13 | 10.74.16.65/30 |
| **Psyche** | eth0 | A2 | 10.74.16.34/29 |
| | eth1 | A3 | 10.74.0.1/22 |
| **Copland** | eth0 | A2 | 10.74.16.35/29 |
| | eth1 | A4 | 10.74.15.193/26 |
| | eth2 | A5 | 10.74.8.1/23 |
| **Schumann** | eth0 | A2 | 10.74.16.36/29 |
| | eth1 | A6 | 10.74.16.41/29 |
| | eth2 | A7 | 10.74.16.57/30 |
| **Acceta** | eth0 | A7 | 10.74.16.58/30 |
| | eth1 | A8 | 10.74.4.1/22 |
| **Wired** | eth0 | A13 | 10.74.16.66/30 |
| | eth1 | A14 | 10.74.16.69/30 |
| | eth2 | A9 | 10.74.16.61/30 |
| **Navi** | eth0 | A9 | 10.74.16.62/30 |
| | eth1 | A10 | 10.74.12.1/24 |
| | eth2 | A11 | 10.74.15.65/26 |
| | eth3 | A12 | 10.74.13.1/24 |
| **Tachibana** | eth0 | A14 | 10.74.16.70/30 |
| | eth1 | A15 | 10.74.10.1/23 |
| | eth2 | A16 | 10.74.16.73/30 |
| **Deus** | eth0 | A16 | 10.74.16.74/30 |
| | eth1 | A17 | 10.74.14.129/25 |
| | eth2 | A18 | 10.74.16.77/30 |
| **Protocol7** | eth0 | A18 | 10.74.16.78/30 |
| | eth1 | A19 | 10.74.15.129/26 |
| | eth2 | A20 | 10.74.16.81/30 |
| **Knights** | eth0 | A20 | 10.74.16.82/30 |
| | eth1 | A21 | 10.74.16.49/29 |
| | eth2 | A22 | 10.74.16.85/30 |
| **Phantoma** | eth0 | A22 | 10.74.16.86/30 |
| | eth1 | A23 | 10.74.16.1/27 |
| | eth2 | A24 | 10.74.16.89/30 |
| **Shibuya** | eth0 | A24 | 10.74.16.90/30 |
| | eth1 | A25 | 10.74.15.1/26 |

---

## 1.7 Pengalamatan Host

Setiap host dikonfigurasi dengan satu IP, netmask, dan default gateway (IP router pada segmen itu). Angka "xx host" pada gambar adalah jumlah host yang diperhitungkan untuk subnetting, bukan jumlah node di GNS3.

| Host | Subnet | IP | Netmask | Gateway |
|---|---|---|---|---|
| JJ | A1 | 10.74.14.2 | 255.255.255.128 | 10.74.14.1 |
| MyuMyu | A1 | 10.74.14.3 | 255.255.255.128 | 10.74.14.1 |
| Karl | A3 | 10.74.0.2 | 255.255.252.0 | 10.74.0.1 |
| Lin | A3 | 10.74.0.3 | 255.255.252.0 | 10.74.0.1 |
| Juri | A4 | 10.74.15.194 | 255.255.255.192 | 10.74.15.193 |
| Masayuki | A5 | 10.74.8.2 | 255.255.254.0 | 10.74.8.1 |
| Akashic | A6 | 10.74.16.42 | 255.255.255.248 | 10.74.16.41 |
| Omnipresence | A8 | 10.74.4.2 | 255.255.252.0 | 10.74.4.1 |
| Denpa | A8 | 10.74.4.3 | 255.255.252.0 | 10.74.4.1 |
| Alice | A10 | 10.74.12.2 | 255.255.255.0 | 10.74.12.1 |
| Reika | A10 | 10.74.12.3 | 255.255.255.0 | 10.74.12.1 |
| Taro | A11 | 10.74.15.66 | 255.255.255.192 | 10.74.15.65 |
| Kuma | A12 | 10.74.13.2 | 255.255.255.0 | 10.74.13.1 |
| Miho | A12 | 10.74.13.3 | 255.255.255.0 | 10.74.13.1 |
| Yasuo | A12 | 10.74.13.4 | 255.255.255.0 | 10.74.13.1 |
| Collective | A15 | 10.74.10.2 | 255.255.254.0 | 10.74.10.1 |
| Ghost | A15 | 10.74.10.3 | 255.255.254.0 | 10.74.10.1 |
| Lilith | A17 | 10.74.14.130 | 255.255.255.128 | 10.74.14.129 |
| Specter | A17 | 10.74.14.131 | 255.255.255.128 | 10.74.14.129 |
| Chisa | A19 | 10.74.15.130 | 255.255.255.192 | 10.74.15.129 |
| Hodgeson | A19 | 10.74.15.131 | 255.255.255.192 | 10.74.15.129 |
| Eri | A21 | 10.74.16.50 | 255.255.255.248 | 10.74.16.49 |
| Semi | A23 | 10.74.16.2 | 255.255.255.224 | 10.74.16.1 |
| Lain | A25 | 10.74.15.2 | 255.255.255.192 | 10.74.15.1 |
| Mika | A25 | 10.74.15.3 | 255.255.255.192 | 10.74.15.1 |

---

## 1.8 Static Routing
<link href="https://github.com/rbvnga/Jarkom-Modul-4-2026-K-21/tree/main/script/gns-VLSM">

### 1.9 Strategi

Topologi berbentuk pohon dengan Cyberia sebagai akar, sehingga strategi paling efisien:

- **Default route** ke arah Cyberia pada setiap router selain Cyberia. Satu entri menggantikan semua jaringan di luar subtree-nya.
- **Route spesifik** hanya untuk subnet di belakang router anak.
- **Summarization** untuk menggabungkan beberapa subnet yang berurutan.
- **Cyberia** memakai default ke NAT dan route spesifik ke tiap cabang.

Summarization adalah menggabungkan beberapa route yang **next hop-nya sama** dan **alamatnya berurutan** menjadi **satu route** dengan prefix lebih pendek. Jalur paketnya tetap sama, tetapi tidak perlu menulis route satu per satu.

#### Daftar Baris Summary pada Konfigurasi
 
| Router | Route summary | Menggantikan | Hemat |
|---|---|---|---|
| Cyberia | `10.74.12.0/23` via 10.74.16.66 | A10, A12 | 1 |
| Cyberia | `10.74.16.64/27` via 10.74.16.66 | A14, A16, A18, A20, A22, A24 | 5 |
| Wired | `10.74.12.0/23` via 10.74.16.62 | A10, A12 | 1 |
| Wired | `10.74.16.64/27` via 10.74.16.70 | A16, A18, A20, A22, A24 | 4 |
| Tachibana | `10.74.16.80/28` via 10.74.16.74 | A20, A22, A24 | 2 |
| Deus | `10.74.16.80/28` via 10.74.16.78 | A20, A22, A24 | 2 |
| **Total** | | | **15** |

---

##  1.10 Analisis Efisiensi

###  Pembagian IP

Pembagian IP sudah efisien karena:
1. Setiap subnet memakai **prefix terkecil** yang usable-nya muat kebutuhan.
2. Subnet diurutkan dari terbesar ke terkecil dan dialokasikan **berurutan tanpa celah** (10.74.0.0 sampai 10.74.16.91).
3. Tidak ada subnet yang tumpang tindih. Network ID berikutnya selalu sama dengan Network ID sebelumnya ditambah ukuran blok.

| Ukuran | Nilai |
|---|---|
| Kebutuhan murni | 2814 |
| Teralokasi (jumlah blok) | 4188 |
| Pemanfaatan terhadap blok | 67,2% |
| Pemanfaatan terhadap usable | 2814 / 4138 = 68,0% |
| Sisa dalam blok | 1374 (50 di antaranya NID dan broadcast) |

Sisa blok /19 (10.74.16.92 sampai 10.74.31.255) merupakan ruang cadangan, bukan pemborosan.

---
## 1.11 Konfigurasi
 
###  Router
 
#### Cyberia
```sh
ip addr flush dev eth0
ip addr flush dev eth1
ip addr flush dev eth2
ip addr flush dev eth4
ip route flush all
sysctl -w net.ipv4.ip_forward=1
 
ip addr add 192.168.122.50/24 dev eth0
ip link set eth0 up
ip route add default via 192.168.122.1
 
ip addr add 10.74.14.1/25 dev eth1
ip link set eth1 up
ip addr add 10.74.16.33/29 dev eth2
ip link set eth2 up
ip addr add 10.74.16.65/30 dev eth4
ip link set eth4 up
 
ip route add 10.74.0.0/22 via 10.74.16.34
ip route add 10.74.8.0/23 via 10.74.16.35
ip route add 10.74.15.192/26 via 10.74.16.35
ip route add 10.74.4.0/22 via 10.74.16.36
ip route add 10.74.16.40/29 via 10.74.16.36
ip route add 10.74.16.56/30 via 10.74.16.36
ip route add 10.74.12.0/23 via 10.74.16.66
ip route add 10.74.15.64/26 via 10.74.16.66
ip route add 10.74.16.60/30 via 10.74.16.66
ip route add 10.74.10.0/23 via 10.74.16.66
ip route add 10.74.14.128/25 via 10.74.16.66
ip route add 10.74.15.0/26 via 10.74.16.66
ip route add 10.74.15.128/26 via 10.74.16.66
ip route add 10.74.16.0/27 via 10.74.16.66
ip route add 10.74.16.48/29 via 10.74.16.66
ip route add 10.74.16.64/27 via 10.74.16.66
 
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
echo "nameserver 8.8.8.8" > /etc/resolv.conf
```
 
#### Psyche
```sh
ip addr flush dev eth0
ip addr flush dev eth1
ip route flush all
sysctl -w net.ipv4.ip_forward=1
 
ip addr add 10.74.16.34/29 dev eth0
ip link set eth0 up
ip addr add 10.74.0.1/22 dev eth1
ip link set eth1 up
 
ip route add default via 10.74.16.33
```
 
#### Copland
```sh
ip addr flush dev eth0
ip addr flush dev eth1
ip addr flush dev eth2
ip route flush all
sysctl -w net.ipv4.ip_forward=1
 
ip addr add 10.74.16.35/29 dev eth0
ip link set eth0 up
ip addr add 10.74.15.193/26 dev eth1
ip link set eth1 up
ip addr add 10.74.8.1/23 dev eth2
ip link set eth2 up
 
ip route add default via 10.74.16.33
```
 
#### Schumann
```sh
ip addr flush dev eth0
ip addr flush dev eth1
ip addr flush dev eth2
ip route flush all
sysctl -w net.ipv4.ip_forward=1
 
ip addr add 10.74.16.36/29 dev eth0
ip link set eth0 up
ip addr add 10.74.16.41/29 dev eth1
ip link set eth1 up
ip addr add 10.74.16.57/30 dev eth2
ip link set eth2 up
 
ip route add default via 10.74.16.33
ip route add 10.74.4.0/22 via 10.74.16.58
```
 
#### Acceta
```sh
ip addr flush dev eth0
ip addr flush dev eth1
ip route flush all
sysctl -w net.ipv4.ip_forward=1
 
ip addr add 10.74.16.58/30 dev eth0
ip link set eth0 up
ip addr add 10.74.4.1/22 dev eth1
ip link set eth1 up
 
ip route add default via 10.74.16.57
```
 
#### Wired
```sh
ip addr flush dev eth0
ip addr flush dev eth1
ip addr flush dev eth2
ip route flush all
sysctl -w net.ipv4.ip_forward=1
 
ip addr add 10.74.16.66/30 dev eth0
ip link set eth0 up
ip addr add 10.74.16.69/30 dev eth1
ip link set eth1 up
ip addr add 10.74.16.61/30 dev eth2
ip link set eth2 up
 
ip route add default via 10.74.16.65
 
ip route add 10.74.12.0/23 via 10.74.16.62
ip route add 10.74.15.64/26 via 10.74.16.62
 
ip route add 10.74.10.0/23 via 10.74.16.70
ip route add 10.74.14.128/25 via 10.74.16.70
ip route add 10.74.15.0/26 via 10.74.16.70
ip route add 10.74.15.128/26 via 10.74.16.70
ip route add 10.74.16.0/27 via 10.74.16.70
ip route add 10.74.16.48/29 via 10.74.16.70
ip route add 10.74.16.64/27 via 10.74.16.70
```
 
#### Navi
```sh
ip addr flush dev eth0
ip addr flush dev eth1
ip addr flush dev eth2
ip addr flush dev eth3
ip route flush all
sysctl -w net.ipv4.ip_forward=1
 
ip addr add 10.74.16.62/30 dev eth0
ip link set eth0 up
ip addr add 10.74.12.1/24 dev eth1
ip link set eth1 up
ip addr add 10.74.15.65/26 dev eth2
ip link set eth2 up
ip addr add 10.74.13.1/24 dev eth3
ip link set eth3 up
 
ip route add default via 10.74.16.61
```
 
#### Tachibana
```sh
ip addr flush dev eth0
ip addr flush dev eth1
ip addr flush dev eth2
ip route flush all
sysctl -w net.ipv4.ip_forward=1
 
ip addr add 10.74.16.70/30 dev eth0
ip link set eth0 up
ip addr add 10.74.10.1/23 dev eth1
ip link set eth1 up
ip addr add 10.74.16.73/30 dev eth2
ip link set eth2 up
 
ip route add default via 10.74.16.69
 
ip route add 10.74.14.128/25 via 10.74.16.74
ip route add 10.74.15.0/26 via 10.74.16.74
ip route add 10.74.15.128/26 via 10.74.16.74
ip route add 10.74.16.0/27 via 10.74.16.74
ip route add 10.74.16.48/29 via 10.74.16.74
ip route add 10.74.16.76/30 via 10.74.16.74
ip route add 10.74.16.80/28 via 10.74.16.74
```
 
#### Deus
```sh
ip addr flush dev eth0
ip addr flush dev eth1
ip addr flush dev eth2
ip route flush all
sysctl -w net.ipv4.ip_forward=1
 
ip addr add 10.74.16.74/30 dev eth0
ip link set eth0 up
ip addr add 10.74.14.129/25 dev eth1
ip link set eth1 up
ip addr add 10.74.16.77/30 dev eth2
ip link set eth2 up
 
ip route add default via 10.74.16.73
 
ip route add 10.74.15.0/26 via 10.74.16.78
ip route add 10.74.15.128/26 via 10.74.16.78
ip route add 10.74.16.0/27 via 10.74.16.78
ip route add 10.74.16.48/29 via 10.74.16.78
ip route add 10.74.16.80/28 via 10.74.16.78
```
 
#### Protocol7
```sh
ip addr flush dev eth0
ip addr flush dev eth1
ip addr flush dev eth2
ip route flush all
sysctl -w net.ipv4.ip_forward=1
 
ip addr add 10.74.16.78/30 dev eth0
ip link set eth0 up
ip addr add 10.74.15.129/26 dev eth1
ip link set eth1 up
ip addr add 10.74.16.81/30 dev eth2
ip link set eth2 up
 
ip route add default via 10.74.16.77
 
ip route add 10.74.15.0/26 via 10.74.16.82
ip route add 10.74.16.0/27 via 10.74.16.82
ip route add 10.74.16.48/29 via 10.74.16.82
ip route add 10.74.16.84/30 via 10.74.16.82
ip route add 10.74.16.88/30 via 10.74.16.82
```
 
#### Knights
```sh
ip addr flush dev eth0
ip addr flush dev eth1
ip addr flush dev eth2
ip route flush all
sysctl -w net.ipv4.ip_forward=1
 
ip addr add 10.74.16.82/30 dev eth0
ip link set eth0 up
ip addr add 10.74.16.49/29 dev eth1
ip link set eth1 up
ip addr add 10.74.16.85/30 dev eth2
ip link set eth2 up
 
ip route add default via 10.74.16.81
 
ip route add 10.74.15.0/26 via 10.74.16.86
ip route add 10.74.16.0/27 via 10.74.16.86
ip route add 10.74.16.88/30 via 10.74.16.86
```
 
#### Phantoma
```sh
ip addr flush dev eth0
ip addr flush dev eth1
ip addr flush dev eth2
ip route flush all
sysctl -w net.ipv4.ip_forward=1
 
ip addr add 10.74.16.86/30 dev eth0
ip link set eth0 up
ip addr add 10.74.16.1/27 dev eth1
ip link set eth1 up
ip addr add 10.74.16.89/30 dev eth2
ip link set eth2 up
 
ip route add default via 10.74.16.85
 
ip route add 10.74.15.0/26 via 10.74.16.90
```
 
#### Shibuya
```sh
ip addr flush dev eth0
ip addr flush dev eth1
ip route flush all
sysctl -w net.ipv4.ip_forward=1
 
ip addr add 10.74.16.90/30 dev eth0
ip link set eth0 up
ip addr add 10.74.15.1/26 dev eth1
ip link set eth1 up
 
ip route add default via 10.74.16.89
```
 
### 1.12 Host
 
#### JJ
```
auto eth0
iface eth0 inet static
    address 10.74.14.2
    netmask 255.255.255.128
    gateway 10.74.14.1
```
 
#### MyuMyu
```
auto eth0
iface eth0 inet static
    address 10.74.14.3
    netmask 255.255.255.128
    gateway 10.74.14.1
```
 
#### Karl
```
auto eth0
iface eth0 inet static
    address 10.74.0.2
    netmask 255.255.252.0
    gateway 10.74.0.1
```
 
#### Lin
```
auto eth0
iface eth0 inet static
    address 10.74.0.3
    netmask 255.255.252.0
    gateway 10.74.0.1
```
 
#### Juri
```
auto eth0
iface eth0 inet static
    address 10.74.15.194
    netmask 255.255.255.192
    gateway 10.74.15.193
```
 
#### Masayuki
```
auto eth0
iface eth0 inet static
    address 10.74.8.2
    netmask 255.255.254.0
    gateway 10.74.8.1
```
 
#### Akashic
```
auto eth0
iface eth0 inet static
    address 10.74.16.42
    netmask 255.255.255.248
    gateway 10.74.16.41
```
 
#### Omnipresence
```
auto eth0
iface eth0 inet static
    address 10.74.4.2
    netmask 255.255.252.0
    gateway 10.74.4.1
```
 
#### Denpa
```
auto eth0
iface eth0 inet static
    address 10.74.4.3
    netmask 255.255.252.0
    gateway 10.74.4.1
```
 
#### Alice
```
auto eth0
iface eth0 inet static
    address 10.74.12.2
    netmask 255.255.255.0
    gateway 10.74.12.1
```
 
#### Reika
```
auto eth0
iface eth0 inet static
    address 10.74.12.3
    netmask 255.255.255.0
    gateway 10.74.12.1
```
 
#### Taro
```
auto eth0
iface eth0 inet static
    address 10.74.15.66
    netmask 255.255.255.192
    gateway 10.74.15.65
```
 
#### Kuma
```
auto eth0
iface eth0 inet static
    address 10.74.13.2
    netmask 255.255.255.0
    gateway 10.74.13.1
```
 
#### Miho
```
auto eth0
iface eth0 inet static
    address 10.74.13.3
    netmask 255.255.255.0
    gateway 10.74.13.1
```
 
#### Yasuo
```
auto eth0
iface eth0 inet static
    address 10.74.13.4
    netmask 255.255.255.0
    gateway 10.74.13.1
```
 
#### Collective
```
auto eth0
iface eth0 inet static
    address 10.74.10.2
    netmask 255.255.254.0
    gateway 10.74.10.1
```
 
#### Ghost
```
auto eth0
iface eth0 inet static
    address 10.74.10.3
    netmask 255.255.254.0
    gateway 10.74.10.1
```
 
#### Lilith
```
auto eth0
iface eth0 inet static
    address 10.74.14.130
    netmask 255.255.255.128
    gateway 10.74.14.129
```
 
#### Specter
```
auto eth0
iface eth0 inet static
    address 10.74.14.131
    netmask 255.255.255.128
    gateway 10.74.14.129
```
 
#### Chisa
```
auto eth0
iface eth0 inet static
    address 10.74.15.130
    netmask 255.255.255.192
    gateway 10.74.15.129
```
 
#### Hodgeson
```
auto eth0
iface eth0 inet static
    address 10.74.15.131
    netmask 255.255.255.192
    gateway 10.74.15.129
```
 
#### Eri
```
auto eth0
iface eth0 inet static
    address 10.74.16.50
    netmask 255.255.255.248
    gateway 10.74.16.49
```
 
#### Semi
```
auto eth0
iface eth0 inet static
    address 10.74.16.2
    netmask 255.255.255.224
    gateway 10.74.16.1
```
 
#### Lain
```
auto eth0
iface eth0 inet static
    address 10.74.15.2
    netmask 255.255.255.192
    gateway 10.74.15.1
```
 
#### Mika
```
auto eth0
iface eth0 inet static
    address 10.74.15.3
    netmask 255.255.255.192
    gateway 10.74.15.1
```

## 2. CIDR
### 2.1 Topology
Router Wired adalah hub yang menghubungkan tiga sayap dan router gerbang Cyberia (tersambung ke Cloud0). Link antar router memakai kabel cross-over, router ke switch dan switch ke host memakai straight-through, dan router ke host langsung (A4 Juri, A6 Akashic, A21 Eiri) memakai cross-over.

<img width="1271" height="723" alt="pembagian sayap" src="https://github.com/user-attachments/assets/37bbdd89-487e-4d57-8cd8-eb1224dfcbdf" />

### 2.2 Penggabungan CIDR
Aturan: prefix gabungan = min(prefix 1, prefix 2) - 1. Dua blok hanya boleh digabung jika (1) bersebelahan di ruang alamat, (2) hasilnya blok yang rata (Network ID kelipatan ukurannya), dan (3) tidak menimpa subnet lain. Pasangan dipilih juga berdasarkan cabang topologi (di belakang router yang sama) supaya satu blok gabungan dapat menjadi satu route ringkasan. Selisih ukuran blok hasil dan komponennya disebut dummy.

#### Tabel Penggabungan CIDR

| Tahap | Subnet | Gabungan dari 1 | Netmask 1 | Gabungan dari 2 | Netmask 2 | Netmask Akhir | Blok hasil |
|---|---|---|---|---|---|---|---|
| I | B1 | A3 | /22 | A8 | /22 | /21 | `10.74.0.0/21` |
| I | B2 | A6 | /29 | A7 | /30 | /28 | `10.74.10.64/28` |
| I | B3 | A2 | /29 | A13 | /30 | /28 | `10.74.10.80/28` |
| I | B4 | A10 | /24 | A12 | /24 | /23 | `10.74.12.0/23` |
| I | B5 | A9 | /30 | A11 | /26 | /25 | `10.74.14.0/25` |
| I | B6 | A22 | /30 | A24 | /30 | /29 | `10.74.18.96/29` |
| I | B7 | A18 | /30 | A20 | /30 | /29 | `10.74.18.192/29` |
| I | B8 | A14 | /30 | A16 | /30 | /29 | `10.74.19.128/29` |
| II | C1 | B2 | /28 | B3 | /28 | /27 | `10.74.10.64/27` |
| II | C2 | A21 | /29 | B6 | /29 | /28 | `10.74.18.96/28` |
| II | C3 | B4 | /23 | B5 | /25 | /22 | `10.74.12.0/22` |
| II | C4 | A19 | /26 | B7 | /29 | /25 | `10.74.18.128/25` |
| II | C5 | A17 | /25 | B8 | /29 | /24 | `10.74.19.0/24` |
| III | D1 | A4 | /26 | C1 | /27 | /25 | `10.74.10.0/25` |
| III | D2 | A23 | /27 | C2 | /28 | /26 | `10.74.18.64/26` |
| IV | E1 | A1 | /25 | D1 | /25 | /24 | `10.74.10.0/24` |
| IV | E2 | A25 | /26 | D2 | /26 | /25 | `10.74.18.0/25` |
| V | F1 | A5 | /23 | E1 | /24 | /22 | `10.74.8.0/22` |
| V | F2 | C4 | /25 | E2 | /25 | /24 | `10.74.18.0/24` |
| VI | G1 | C3 | /22 | F1 | /22 | /21 | `10.74.8.0/21` |
| VI | G2 | C5 | /24 | F2 | /24 | /23 | `10.74.18.0/23` |
| VII | H1 | B1 | /21 | G1 | /21 | /20 | `10.74.0.0/20` |
| VII | H2 | A15 | /23 | G2 | /23 | /22 | `10.74.16.0/22` |
| VIII | I1 | H1 | /20 | H2 | /22 | /19 | `10.74.0.0/19` |

Total 24 penggabungan. Hasil akhir I1 = H1 (10.74.0.0/20) + H2 (10.74.16.0/22) menjadi /19 = 10.74.0.0/19, sama dengan blok induk pada bagian 3.

### 2.3 Pohon CIDR
<img width="1612" height="812" alt="tree cidr k-21 drawio" src="https://github.com/user-attachments/assets/d600e89a-6900-4c86-9386-7cb649426ee1" />

### 2.4 Pembagian IP
Dari posisi yang ditentukan pohon, tiap subnet dihitung:
Netmask: n bit pertama diisi 1, dibaca per oktet.
Ukuran blok: 2^(32 - prefix).
Network ID: alamat awal blok (kelipatan ukuran blok).
Broadcast: Network ID + ukuran blok - 1.
Range usable: Network ID + 1 sampai Broadcast - 1 (jumlah = ukuran - 2).
Contoh A2 = 10.74.10.80/29: netmask 255.255.255.248, ukuran 8, Network ID 10.74.10.80, Broadcast 80 + 8 - 1 = 10.74.10.87, usable 10.74.10.81 sampai 10.74.10.86.

#### Tabel Pembagian IP - CIDR

| Subnet | Kebutuhan | Network ID | Netmask | Broadcast | Range IP |
|---|---|---|---|---|---|
| A1 | 126 | `10.74.10.128/25` | 255.255.255.128 | 10.74.10.255 | 10.74.10.129 - 10.74.10.254 |
| A2 | 4 | `10.74.10.80/29` | 255.255.255.248 | 10.74.10.87 | 10.74.10.81 - 10.74.10.86 |
| A3 | 881 | `10.74.0.0/22` | 255.255.252.0 | 10.74.3.255 | 10.74.0.1 - 10.74.3.254 |
| A4 | 32 | `10.74.10.0/26` | 255.255.255.192 | 10.74.10.63 | 10.74.10.1 - 10.74.10.62 |
| A5 | 301 | `10.74.8.0/23` | 255.255.254.0 | 10.74.9.255 | 10.74.8.1 - 10.74.9.254 |
| A6 | 4 | `10.74.10.64/29` | 255.255.255.248 | 10.74.10.71 | 10.74.10.65 - 10.74.10.70 |
| A7 | 2 | `10.74.10.72/30` | 255.255.255.252 | 10.74.10.75 | 10.74.10.73 - 10.74.10.74 |
| A8 | 514 | `10.74.4.0/22` | 255.255.252.0 | 10.74.7.255 | 10.74.4.1 - 10.74.7.254 |
| A9 | 2 | `10.74.14.64/30` | 255.255.255.252 | 10.74.14.67 | 10.74.14.65 - 10.74.14.66 |
| A10 | 254 | `10.74.12.0/24` | 255.255.255.0 | 10.74.12.255 | 10.74.12.1 - 10.74.12.254 |
| A11 | 58 | `10.74.14.0/26` | 255.255.255.192 | 10.74.14.63 | 10.74.14.1 - 10.74.14.62 |
| A12 | 143 | `10.74.13.0/24` | 255.255.255.0 | 10.74.13.255 | 10.74.13.1 - 10.74.13.254 |
| A13 | 2 | `10.74.10.88/30` | 255.255.255.252 | 10.74.10.91 | 10.74.10.89 - 10.74.10.90 |
| A14 | 2 | `10.74.19.128/30` | 255.255.255.252 | 10.74.19.131 | 10.74.19.129 - 10.74.19.130 |
| A15 | 267 | `10.74.16.0/23` | 255.255.254.0 | 10.74.17.255 | 10.74.16.1 - 10.74.17.254 |
| A16 | 2 | `10.74.19.132/30` | 255.255.255.252 | 10.74.19.135 | 10.74.19.133 - 10.74.19.134 |
| A17 | 99 | `10.74.19.0/25` | 255.255.255.128 | 10.74.19.127 | 10.74.19.1 - 10.74.19.126 |
| A18 | 2 | `10.74.18.192/30` | 255.255.255.252 | 10.74.18.195 | 10.74.18.193 - 10.74.18.194 |
| A19 | 33 | `10.74.18.128/26` | 255.255.255.192 | 10.74.18.191 | 10.74.18.129 - 10.74.18.190 |
| A20 | 2 | `10.74.18.196/30` | 255.255.255.252 | 10.74.18.199 | 10.74.18.197 - 10.74.18.198 |
| A21 | 3 | `10.74.18.104/29` | 255.255.255.248 | 10.74.18.111 | 10.74.18.105 - 10.74.18.110 |
| A22 | 2 | `10.74.18.100/30` | 255.255.255.252 | 10.74.18.103 | 10.74.18.101 - 10.74.18.102 |
| A23 | 15 | `10.74.18.64/27` | 255.255.255.224 | 10.74.18.95 | 10.74.18.65 - 10.74.18.94 |
| A24 | 2 | `10.74.18.96/30` | 255.255.255.252 | 10.74.18.99 | 10.74.18.97 - 10.74.18.98 |
| A25 | 62 | `10.74.18.0/26` | 255.255.255.192 | 10.74.18.63 | 10.74.18.1 - 10.74.18.62 |

### 2.5 konfigurasi Router
#### Alamat interface
| Router | Interface | Subnet | IP | Mask |
|---|---|---|---|---|
| Cyberia | Fa0/1 | A1 (ke Switch1) | 10.74.10.129 | 255.255.255.128 |
| Cyberia | Fa1/0 | A13 (ke Wired) | 10.74.10.89 | 255.255.255.252 |
| Wired | Fa0/0 | A13 (ke Cyberia) | 10.74.10.90 | 255.255.255.252 |
| Wired | Fa0/1 | A2 (ke Switch2) | 10.74.10.81 | 255.255.255.248 |
| Wired | Fa1/0 | A9 (ke Navi) | 10.74.14.65 | 255.255.255.252 |
| Wired | Eth0/0/0 | A14 (ke Tachibana) | 10.74.19.129 | 255.255.255.252 |
| Psyche | Fa0/0 | A2 (ke Switch2) | 10.74.10.82 | 255.255.255.248 |
| Psyche | Fa0/1 | A3 (ke Switch3) | 10.74.0.1 | 255.255.252.0 |
| Copland | Fa0/0 | A2 (ke Switch2) | 10.74.10.83 | 255.255.255.248 |
| Copland | Fa0/1 | A4 (ke Juri) | 10.74.10.1 | 255.255.255.192 |
| Copland | Fa1/0 | A5 (ke Switch4) | 10.74.8.1 | 255.255.254.0 |
| Schumann | Fa0/0 | A2 (ke Switch2) | 10.74.10.84 | 255.255.255.248 |
| Schumann | Fa0/1 | A6 (ke Akashic) | 10.74.10.65 | 255.255.255.248 |
| Schumann | Fa1/0 | A7 (ke Accela) | 10.74.10.73 | 255.255.255.252 |
| Accela | Fa0/0 | A7 (ke Schumann) | 10.74.10.74 | 255.255.255.252 |
| Accela | Fa0/1 | A8 (ke Switch5) | 10.74.4.1 | 255.255.252.0 |
| Navi | Fa0/0 | A9 (ke Wired) | 10.74.14.66 | 255.255.255.252 |
| Navi | Fa0/1 | A10 (ke Switch6) | 10.74.12.1 | 255.255.255.0 |
| Navi | Fa1/0 | A11 (ke Switch7) | 10.74.14.1 | 255.255.255.192 |
| Navi | Eth0/0/0 | A12 (ke Switch8) | 10.74.13.1 | 255.255.255.0 |
| Tachibana | Fa0/0 | A14 (ke Wired) | 10.74.19.130 | 255.255.255.252 |
| Tachibana | Fa0/1 | A15 (ke Switch9) | 10.74.16.1 | 255.255.254.0 |
| Tachibana | Fa1/0 | A16 (ke Deus) | 10.74.19.133 | 255.255.255.252 |
| Deus | Fa0/0 | A16 (ke Tachibana) | 10.74.19.134 | 255.255.255.252 |
| Deus | Fa0/1 | A17 (ke Switch10) | 10.74.19.1 | 255.255.255.128 |
| Deus | Fa1/0 | A18 (ke Protocol7) | 10.74.18.193 | 255.255.255.252 |
| Protocol7 | Fa0/0 | A18 (ke Deus) | 10.74.18.194 | 255.255.255.252 |
| Protocol7 | Fa0/1 | A19 (ke Switch11) | 10.74.18.129 | 255.255.255.192 |
| Protocol7 | Fa1/0 | A20 (ke Knights) | 10.74.18.197 | 255.255.255.252 |
| Knights | Fa0/0 | A20 (ke Protocol7) | 10.74.18.198 | 255.255.255.252 |
| Knights | Fa0/1 | A21 (ke Eiri) | 10.74.18.105 | 255.255.255.248 |
| Knights | Fa1/0 | A22 (ke Phantoma) | 10.74.18.101 | 255.255.255.252 |
| Phantoma | Fa0/0 | A22 (ke Knights) | 10.74.18.102 | 255.255.255.252 |
| Phantoma | Fa0/1 | A23 (ke Switch12) | 10.74.18.65 | 255.255.255.224 |
| Phantoma | Fa1/0 | A24 (ke Shibuya) | 10.74.18.97 | 255.255.255.252 |
| Shibuya | Fa0/0 | A24 (ke Phantoma) | 10.74.18.98 | 255.255.255.252 |
| Shibuya | Fa0/1 | A25 (ke Switch13) | 10.74.18.1 | 255.255.255.192 |


#### Routing
Setiap router memiliki default route ke arah uplink dan route ringkasan ke arah bawah. Karena longest prefix match, subnet yang tersambung langsung selalu menang atas route yang lebih lebar. Contohnya Cyberia hanya perlu satu route 10.74.0.0/19 untuk seluruh jaringan internal, dan Wired memakai 10.74.12.0/22 untuk seluruh sayap KANAN serta 10.74.16.0/22 untuk seluruh sayap BAWAH. Total ada 36 route di semua router.

##### Cyberia
```c
ip route 10.74.0.0 255.255.224.0 10.74.10.90   ! 10.74.0.0/19 via Wired
```

##### Wired
```
ip route 10.74.0.0 255.255.252.0 10.74.10.82   ! 10.74.0.0/22 via Psyche
ip route 10.74.8.0 255.255.254.0 10.74.10.83   ! 10.74.8.0/23 via Copland
ip route 10.74.10.0 255.255.255.192 10.74.10.83   ! 10.74.10.0/26 via Copland
ip route 10.74.4.0 255.255.252.0 10.74.10.84   ! 10.74.4.0/22 via Schumann
ip route 10.74.10.64 255.255.255.240 10.74.10.84   ! 10.74.10.64/28 via Schumann
ip route 10.74.12.0 255.255.252.0 10.74.14.66   ! 10.74.12.0/22 via Navi
ip route 10.74.16.0 255.255.252.0 10.74.19.130   ! 10.74.16.0/22 via Tachibana
ip route 0.0.0.0 0.0.0.0 10.74.10.89   ! 0.0.0.0/0 via Cyberia
```

##### Psyche
```
ip route 10.74.8.0 255.255.254.0 10.74.10.83   ! 10.74.8.0/23 via Copland
ip route 10.74.10.0 255.255.255.192 10.74.10.83   ! 10.74.10.0/26 via Copland
ip route 10.74.4.0 255.255.252.0 10.74.10.84   ! 10.74.4.0/22 via Schumann
ip route 10.74.10.64 255.255.255.240 10.74.10.84   ! 10.74.10.64/28 via Schumann
ip route 0.0.0.0 0.0.0.0 10.74.10.81   ! 0.0.0.0/0 via Wired
```

##### Copland
```
ip route 10.74.0.0 255.255.252.0 10.74.10.82   ! 10.74.0.0/22 via Psyche
ip route 10.74.4.0 255.255.252.0 10.74.10.84   ! 10.74.4.0/22 via Schumann
ip route 10.74.10.64 255.255.255.240 10.74.10.84   ! 10.74.10.64/28 via Schumann
ip route 0.0.0.0 0.0.0.0 10.74.10.81   ! 0.0.0.0/0 via Wired
```
##### Schumann
```
ip route 10.74.0.0 255.255.252.0 10.74.10.82   ! 10.74.0.0/22 via Psyche
ip route 10.74.8.0 255.255.254.0 10.74.10.83   ! 10.74.8.0/23 via Copland
ip route 10.74.10.0 255.255.255.192 10.74.10.83   ! 10.74.10.0/26 via Copland
ip route 10.74.4.0 255.255.252.0 10.74.10.74   ! 10.74.4.0/22 via Accela
ip route 0.0.0.0 0.0.0.0 10.74.10.81   ! 0.0.0.0/0 via Wired
```

##### Accela
```c
ip route 0.0.0.0 0.0.0.0 10.74.10.73   ! 0.0.0.0/0 via Schumann
```

##### Navi
```c
ip route 0.0.0.0 0.0.0.0 10.74.14.65   ! 0.0.0.0/0 via Wired
```

##### Tachibana
```
ip route 10.74.18.0 255.255.254.0 10.74.19.134   ! 10.74.18.0/23 via Deus
ip route 0.0.0.0 0.0.0.0 10.74.19.129   ! 0.0.0.0/0 via Wired
````
##### Deus
```c
ip route 10.74.18.0 255.255.255.0 10.74.18.194   ! 10.74.18.0/24 via Protocol7
ip route 0.0.0.0 0.0.0.0 10.74.19.133   ! 0.0.0.0/0 via Tachibana
```
##### Protocol7
```
ip route 10.74.18.0 255.255.255.128 10.74.18.198   ! 10.74.18.0/25 via Knights
ip route 0.0.0.0 0.0.0.0 10.74.18.193   ! 0.0.0.0/0 via Deus
```
##### Knights
```
 ip route 10.74.18.0 255.255.255.128 10.74.18.102   ! 10.74.18.0/25 via Phantoma
ip route 0.0.0.0 0.0.0.0 10.74.18.197   ! 0.0.0.0/0 via Protocol7

```
##### Phantoma
```
ip route 10.74.18.0 255.255.255.192 10.74.18.98   ! 10.74.18.0/26 via Shibuya
ip route 0.0.0.0 0.0.0.0 10.74.18.101   ! 0.0.0.0/0 via Knights
````
##### Shibuya
````
ip route 0.0.0.0 0.0.0.0 10.74.18.97   ! 0.0.0.0/0 via Phantoma
````
#### Konfigurasi end device
Tiap device mewakili sejumlah host dan diberi satu IP statis (Desktop > IP Configuration > Static, DNS dikosongkan).
 
| Device | Subnet | IP | Netmask | Gateway |
|---|---|---|---|---|
| JJ | A1 | 10.74.10.130 | 255.255.255.128 | 10.74.10.129 |
| MyuMyu | A1 | 10.74.10.131 | 255.255.255.128 | 10.74.10.129 |
| Karl | A3 | 10.74.0.2 | 255.255.252.0 | 10.74.0.1 |
| Lin | A3 | 10.74.0.3 | 255.255.252.0 | 10.74.0.1 |
| Juri | A4 | 10.74.10.2 | 255.255.255.192 | 10.74.10.1 |
| Masayuki | A5 | 10.74.8.2 | 255.255.254.0 | 10.74.8.1 |
| Akashic | A6 | 10.74.10.66 | 255.255.255.248 | 10.74.10.65 |
| Omnipresence | A8 | 10.74.4.2 | 255.255.252.0 | 10.74.4.1 |
| Denpa | A8 | 10.74.4.3 | 255.255.252.0 | 10.74.4.1 |
| Alice | A10 | 10.74.12.2 | 255.255.255.0 | 10.74.12.1 |
| Reika | A10 | 10.74.12.3 | 255.255.255.0 | 10.74.12.1 |
| Taro | A11 | 10.74.14.2 | 255.255.255.192 | 10.74.14.1 |
| Kuma | A12 | 10.74.13.2 | 255.255.255.0 | 10.74.13.1 |
| Miho | A12 | 10.74.13.3 | 255.255.255.0 | 10.74.13.1 |
| Yasuo | A12 | 10.74.13.4 | 255.255.255.0 | 10.74.13.1 |
| Collective | A15 | 10.74.16.2 | 255.255.254.0 | 10.74.16.1 |
| Ghost | A15 | 10.74.16.3 | 255.255.254.0 | 10.74.16.1 |
| Lilith | A17 | 10.74.19.2 | 255.255.255.128 | 10.74.19.1 |
| Specter | A17 | 10.74.19.3 | 255.255.255.128 | 10.74.19.1 |
| Chisa | A19 | 10.74.18.130 | 255.255.255.192 | 10.74.18.129 |
| Hodgeson | A19 | 10.74.18.131 | 255.255.255.192 | 10.74.18.129 |
| Eiri | A21 | 10.74.18.106 | 255.255.255.248 | 10.74.18.105 |
| Semi | A23 | 10.74.18.66 | 255.255.255.224 | 10.74.18.65 |
| Lain | A25 | 10.74.18.2 | 255.255.255.192 | 10.74.18.1 |
| Mika | A25 | 10.74.18.3 | 255.255.255.192 | 10.74.18.1 |

### 2.6 pengujian
Pengujian memakai `ping` (dari CLI router dan Command Prompt end device) dan `tracert`. Paket pertama ping sering gagal karena ARP, itu normal; paket berikutnya harus sukses. Simulasi routing terhadap seluruh pasangan (25 end device dan 13 router) menghasilkan 0 pasangan gagal.
 
| No | Pengujian | Perintah | Jalur yang diharapkan | Hasil |
|---|---|---|---|---|
| 1 | Router ke router (tetangga): Cyberia ke Wired | `ping 10.74.10.90` | langsung | _tempel screenshot_ |
| 2 | Router ke router (jauh): Cyberia ke Shibuya | `ping 10.74.18.1` | Wired, Tachibana, Deus, Protocol7, Knights, Phantoma, Shibuya | _tempel screenshot_ |
| 3 | Router ke router (jauh): Psyche ke Protocol7 | `ping 10.74.18.129` | Wired, Tachibana, Deus, Protocol7 | _tempel screenshot_ |
| 4 | Router ke client: Cyberia ke Karl | `ping 10.74.0.2` | Wired, Psyche | _tempel screenshot_ |
| 5 | Client ke client: Omnipresence ke Mika | `ping 10.74.18.3` | Accela, Schumann, Wired, Tachibana, Deus, Protocol7, Knights, Phantoma, Shibuya | _tempel screenshot_ |
| 6 | Client ke client: Karl ke Shibuya | `ping 10.74.18.1` | Psyche, Wired, Tachibana, Deus, Protocol7, Knights, Phantoma, Shibuya | _tempel screenshot_ |
| 7 | Client ke router: Yasuo ke Phantoma | `ping 10.74.18.65` | Navi, Wired, Tachibana, Deus, Protocol7, Knights, Phantoma | _tempel screenshot_ |
| 8 | Client ke router (gerbang): JJ ke Cyberia | `ping 10.74.10.129` | Cyberia | _tempel screenshot_ |
 
Pengujian arah sebaliknya (Mika ke Omnipresence, Shibuya ke Karl, Phantoma ke Yasuo, Shibuya ke Cyberia, Protocol7 ke Psyche) juga dilakukan dan berhasil pada simulasi.
 
**Catatan jaringan luar:** Cloud0 pada Packet Tracer tidak terhubung ke jaringan nyata dan NAT tidak disimulasikan. Jalur keluar dibuktikan lewat default route di setiap router yang mengarah ke Cyberia (gerbang) dan ping ke interface Cyberia (10.74.10.129) yang berhasil dari end device.
