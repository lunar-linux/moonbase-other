(
  ./configure   --build=$BUILD					\
                --sysconfdir=/etc                               \
                --prefix=/opt/lunar/gnome/2			\
		--localstatedir=/var				\
		--infodir=/opt/lunar/gnome/2/share/info	\
		--mandir=/opt/lunar/gnome/2/share/man		\
                --with-plugin-install-dir=/opt/lunar/gnome/2/lib    \
                $OPTS                                          &&

  default_make
  
) > $C_FIFO 2>&1
