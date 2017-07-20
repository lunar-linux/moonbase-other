drill -z -s DNSKEY . > root.key

cat root-anchors.xml |
awk 'BEGIN{ORS=" "}(NR>4){gsub(/<[^>]*>/,"");print tolower($0)}' |
sedit 's/   /\n/' > root.ds

# Any of those tests failing is suspicious; check thoroughly!
[[ "$(<root.ds)" = '19036 8 2 49aac11d7b6f6446702e54a1607371607a1a41855200fd2ce1cdde32f24e8fb5' ]] &&
grep -Pq 'IN\tDS\t'"$(<root.ds)" root.key ||

sed '/DNSKEY/s/ ;{id = '"$(cut -d\  -f1<root.ds)"' .*//;t;d' root.key > trusted-key.key

prepare_install &&

install -Dm644 trusted-key.key /etc/trusted-key.key
