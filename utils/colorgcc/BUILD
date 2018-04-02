prepare_install &&

install -Dm755 colorgcc.pl /usr/bin/colorgcc &&
install -Dm644  $SOURCE2 /etc/colorgcc/colorgccrc &&

# prepare overlay for colorgcc
install -dm0755 /usr/lib/colorgcc &&
for x in gcc g++ cc cpp; do
  ln -sf /usr/bin/colorgcc /usr/lib/colorgcc/$x
done &&

gather_docs README
