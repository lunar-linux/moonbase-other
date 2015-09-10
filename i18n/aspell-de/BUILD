LANGS="de_DE de_AT de_CH" &&
for l in ${LANGS}; do
  make aspell/${l}.rws
done &&

prepare_install &&

cd aspell &&
for l in ${LANGS}; do
  install -m644 ${l}.alias ${l}.dat ${l}_affix.dat ${l}.multi ${l}.rws \
          "/usr/lib/aspell-0.60/"
done &&

echo "add de_DE.multi" > "/usr/lib/aspell-0.60/deutsch.alias" &&
echo "add de_DE.multi" > "/usr/lib/aspell-0.60/german.alias" &&
echo "add de_CH.multi" > "/usr/lib/aspell-0.60/swiss.alias"
