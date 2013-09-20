prepare_install &&

install -Dm0755 $SOURCE /usr/bin/colorgcc &&

# prepare overlay for colorgcc
install -dm0755 /usr/lib/colorgcc &&
for x in gcc g++ cc cpp; do
  ln -s /usr/bin/colorgcc /usr/lib/colorgcc/$x
done &&

gather_docs $SOURCE2
