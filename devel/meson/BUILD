prepare_install &&

python3 setup.py install --optimize=1 --root=/ &&

for _f in data/syntax-highlighting/vim/*/*; do
   install -Dt /usr/share/vim/vimfiles/$(basename "$(dirname "$_f")") -m644 $_f
done
