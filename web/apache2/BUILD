(

  ./configure  --prefix=/usr/share/httpd                        \
               --exec-prefix=/usr                               \
               --sbindir=/usr/sbin                              \
               --libexecdir=/usr/libexec                        \
               --datadir=/usr/share/httpd                       \
               --sysconfdir=/etc/httpd                          \
               --sharedstatedir=/var/run/apache                 \
               --localstatedir=/var                             \
               --libdir=/usr/lib                                \
               --includedir=/usr/include/apache2                \
               --infodir=/usr/share/info                        \
               --mandir=/usr/share/man                          \
               --enable-shared-modules=all                      \
               --enable-so                                      \
               --enable-info                                    \
               --enable-cgi                                     \
               --enable-rewrite                                 \
               --enable-speling                                 \
               --enable-usertrack                               \
               --enable-deflate                                 \
               --enable-ssl                                     \
               --enable-mime-magic                              \
               --with-mpm=worker                                \
               --with-berkeley-db                               \
               --enable-layout=GNU                              \
               $OPTS                                            &&

  make                                           &&
  prepare_install                                &&
  make    install                                &&
  ln -s httpd /usr/sbin/httpsd

) > $C_FIFO 2>&1
