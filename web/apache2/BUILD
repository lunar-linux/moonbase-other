(

  ./configure  --prefix=/usr/share/httpd			\
               --exec-prefix=/usr				\
	       --sbindir=/usr/sbin				\
	       --libexecdir=/usr/libexec			\
	       --datadir=/usr/share/httpd			\
	       --sysconfdir=/etc/httpd				\
	       --sharedstatedir=/var/run/apache			\
	       --localstatedir=/var				\
	       --libdir=/usr/lib				\
	       --includedir=/usr/include/apache2		\
	       --infodir=/usr/share/info			\
	       --mandir=/usr/share/man				\
               --enable-modules=most,max,auth_db,so,php,ssl	\
	       --enable-so					\
               --enable-info					\
               --enable-cgi					\
               --disable-auth					\
               --enable-layout=GNU				&&

  make                                           &&
  prepare_install                                &&
  make    install

) > $C_FIFO 2>&1
