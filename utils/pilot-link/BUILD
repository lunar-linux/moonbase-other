(

 patch_it $SOURCE_CACHE/$SOURCE2 1
 ./configure  --build=$BUILD                  \
              --prefix=/usr                   \
              --bindir=/usr/bin               \
              --sbindir=/usr/sbin             \
              --datadir=/usr/share            \
              --sysconfdir=/etc               \
              --localstatedir=/var            \
              --libdir=/usr/lib               \
              --includedir=/usr/include       \
              --infodir=/usr/share/info       \
              --mandir=/usr/share/man         \
              --with-readline                 \
              --with-cpp                      \
              --with-perl5                    \
              --with-python                   &&
  default_make

) > $C_FIFO 2>&1
