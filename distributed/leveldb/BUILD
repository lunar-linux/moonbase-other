make &&

prepare_install &&

install -m 644 libleveldb.a /usr/lib &&
install -m 755 libleveldb.so.1.18 /usr/lib &&
(
  cd /usr/lib &&
  ln -s libleveldb.so.1.18 libleveldb.so.1 &&
  ln -s libleveldb.so.1.18 libleveldb.so 
) &&
tar cvf - include | ( cd /usr; tar xvf - )
