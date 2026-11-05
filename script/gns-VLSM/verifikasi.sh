
HOSTS="
JJ=10.74.14.2
MyuMyu=10.74.14.3
Karl=10.74.0.2
Lin=10.74.0.3
Juri=10.74.15.194
Masayuki=10.74.8.2
Akashic=10.74.16.42
Omnipresence=10.74.4.2
Denpa=10.74.4.3
Alice=10.74.12.2
Reika=10.74.12.3
Taro=10.74.15.66
Kuma=10.74.13.2
Miho=10.74.13.3
Yasuo=10.74.13.4
Collective=10.74.10.2
Ghost=10.74.10.3
Lilith=10.74.14.130
Specter=10.74.14.131
Chisa=10.74.15.130
Hodgeson=10.74.15.131
Eri=10.74.16.50
Semi=10.74.16.2
Lain=10.74.15.2
Mika=10.74.15.3
"

ROUTERS="
Cyberia-A1=10.74.14.1
Cyberia-A2=10.74.16.33
Cyberia-A13=10.74.16.65
Psyche-A2=10.74.16.34
Psyche-A3=10.74.0.1
Copland-A2=10.74.16.35
Copland-A4=10.74.15.193
Copland-A5=10.74.8.1
Schumann-A2=10.74.16.36
Schumann-A6=10.74.16.41
Schumann-A7=10.74.16.57
Acceta-A7=10.74.16.58
Acceta-A8=10.74.4.1
Wired-A13=10.74.16.66
Wired-A14=10.74.16.69
Wired-A9=10.74.16.61
Navi-A9=10.74.16.62
Navi-A10=10.74.12.1
Navi-A11=10.74.15.65
Navi-A12=10.74.13.1
Tachibana-A14=10.74.16.70
Tachibana-A15=10.74.10.1
Tachibana-A16=10.74.16.73
Deus-A16=10.74.16.74
Deus-A17=10.74.14.129
Deus-A18=10.74.16.77
Protocol7-A18=10.74.16.78
Protocol7-A19=10.74.15.129
Protocol7-A20=10.74.16.81
Knights-A20=10.74.16.82
Knights-A21=10.74.16.49
Knights-A22=10.74.16.85
Phantoma-A22=10.74.16.86
Phantoma-A23=10.74.16.1
Phantoma-A24=10.74.16.89
Shibuya-A24=10.74.16.90
Shibuya-A25=10.74.15.1
"

PASS=0
FAIL=0
GAGAL_LIST=""

cek() {
  for item in $1; do
    nama=${item%%=*}
    ip=${item##*=}
    if ping -c 3 -W 2 "$ip" > /dev/null 2>&1; then
      echo "OK    $nama ($ip)"
      PASS=$((PASS+1))
    else
      echo "FAIL  $nama ($ip)"
      FAIL=$((FAIL+1))
      GAGAL_LIST="$GAGAL_LIST $nama"
    fi
  done
}

echo "=== IP dan route node ini ==="
ip -4 -br addr show
ip route
echo

echo "=== Ping ke semua interface router ==="
cek "$ROUTERS"
echo

echo "=== Ping ke semua host ==="
cek "$HOSTS"
echo

echo "=========================================="
echo "BERHASIL: $PASS   GAGAL: $FAIL"
if [ "$FAIL" -gt 0 ]; then
  echo "Yang gagal:$GAGAL_LIST"
fi
echo "=========================================="

echo
echo "=== traceroute ke Karl (A3) ==="
traceroute -n 10.74.0.2 2>/dev/null || tracepath -n 10.74.0.2 2>/dev/null

echo
echo "=== traceroute ke Mika (A25) ==="
traceroute -n 10.74.15.3 2>/dev/null || tracepath -n 10.74.15.3 2>/dev/null

# Internet (hanya relevan dari Cyberia):
# ping -c 2 8.8.8.8