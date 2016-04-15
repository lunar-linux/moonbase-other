unset CC CXX

./configure --prefix=/usr     \
            --host=$BUILD     \
            --bindir=/bin     \
            --sbindir=/sbin   \
            --libdir=/lib     \
            --sysconfdir=/etc \
            --mandir=/usr/share/man \
            --infodir=/usr/share/info &&

default_make &&

# Install man pages.
for (( COUNT=1 ; COUNT < 9 ; COUNT++ )); do
  cp  doc/man/*.$COUNT  /usr/share/man/man$COUNT  2> /dev/null
  true
done
