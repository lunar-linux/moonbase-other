(
  # Crappy tarball
  rm missing mkinstalldirs install-sh
  ln -sf /usr/share/automake/install-sh ./install-sh
  ln -sf /usr/share/automake/mkinstalldirs ./mkinstalldirs
  ln -sf /usr/share/automake/missing ./missing

   
   ./configure  --build=$BUILD					\
                --sysconfdir=/etc                               \
                --prefix=/opt/lunar/gnome/2			\
		--localstatedir=/var				\
		--infodir=/opt/lunar/gnome/2/share/info	\
		--mandir=/opt/lunar/gnome/2/share/man		&&

   default_make
   
) > $C_FIFO 2>&1
