make &&

prepare_install &&

install -m 644 out-static/libleveldb.a /usr/lib &&
install -m 755 out-shared/libleveldb.so.$VERSION /usr/lib &&
(
  cd /usr/lib &&
  ln -s libleveldb.so.$VERSION libleveldb.so.1 &&
  ln -s libleveldb.so.$VERSION libleveldb.so 
) &&
tar cvf - include | ( cd /usr; tar xvf - )
